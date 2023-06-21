try:
    import tkinter as tk  # assume Python 3
except ImportError:
    import Tkinter as tk  # nope, Python 2

import serial
import time

MAZE_OBS_COLOR = 'black'
OPEN_COLOR = 'yellow'
CLOSE_COLOR = 'gray'
PATH_COLOR = 'green'
START_COLOR = 'orange'
END_COLOR = 'pink'


class Level:
    def __init__(self, name, height, width):
        self.name = name
        self.height = height
        self.width = width
        self.tiles = makeTiles(height, width)

    class Tile:
        def __init__(self, x, y, type, color, isOccupied, enemy):
            self.x = x
            self.y = y
            self.type = type
            self.color = color
            self.isOccupied = isOccupied
            self.enemy = enemy

def makeLevel(name, height, width):
    level = Level(name, height, width)
    return level

def makeTiles(height, width):
    tiles = [[Level.Tile(x, y, "Surface", "gray", False, "None") for x in range(width)] for y in range(height)]
    return tiles

def clicked(event, x, y):
    color = canvas.itemcget(f'{x},{y}',option='fill')
    newColor = None
    if color == 'white':
        newColor = MAZE_OBS_COLOR
    elif color == MAZE_OBS_COLOR:
        newColor = START_COLOR
    elif color == START_COLOR:
        newColor = END_COLOR 
    elif color == END_COLOR:
        newColor = 'white'
    else:
        newColor = 'white'
    canvas.itemconfig(tagOrId = f'{x},{y}', fill = newColor)

def clicked_reset(event, x, y):
    for x in range(0,matrix_size):
        for y in range(0,matrix_size):
            canvas.itemconfig(tagOrId = f'{x},{y}', fill = 'white')

def clicked_send(event, x, y):
    maze_list = []
    start = (0,0)
    end = (1,2)
    ser = serial.Serial()
    ser.baudrate = 115200
    ser.port = 'COM4'
    ser.timeout = 30
    ser.open()
    for x in range(0,matrix_size):
        maze_string = ''
        for y in range(0,matrix_size):
            color = canvas.itemcget(f'{x},{y}',option='fill')
            if color == MAZE_OBS_COLOR:
                maze_string = maze_string + '1'
            elif color == START_COLOR:     
                start = (matrix_size - y - 1, x)
               # print(f"start = {start}")
            elif color == END_COLOR:
                end = (matrix_size - y - 1, x)
               # print(f"end = {end}")

            else:
                maze_string = maze_string + '0'
        
        maze_list.append(int(maze_string,2))
        #print(int(maze_string,2))
        ser.write(str.encode(f"{int(maze_string,2)}\n"))


    ser.write(str.encode(f"{start[0]}\n"))
    ser.write(str.encode(f"{start[1]}\n"))
    ser.write(str.encode(f"{end[0]}\n"))
    ser.write(str.encode(f"{end[1]}\n"))
    ser.close()

    maze_list = read('m', matrix_size)
    time.sleep(1)
    open_list = read('o', matrix_size)
    close_list = read('c', matrix_size)
    path_list = read('p', matrix_size)

    print(open_list)

    for x in range(0,matrix_size):
        for y in range(0,matrix_size):
            if (x, y) in maze_list:
                canvas.itemconfig(tagOrId = f'{x},{y}', fill = MAZE_OBS_COLOR)
            elif (x, y) in open_list:
                canvas.itemconfig(tagOrId = f'{x},{y}', fill = OPEN_COLOR)
            elif (x, y) in close_list:
                canvas.itemconfig(tagOrId = f'{x},{y}', fill = CLOSE_COLOR)

                 
    for x in range(0,matrix_size):
        for y in range(0,matrix_size):
            if (x, y) in path_list:
                canvas.itemconfig(tagOrId = f'{x},{y}', fill = PATH_COLOR)
    for x in range(0,matrix_size):
        for y in range(0,matrix_size):
            if (matrix_size - y - 1, x) == start:
                canvas.itemconfig(tagOrId = f'{x},{y}', fill = START_COLOR)
            elif (matrix_size - y - 1, x) == end:
                canvas.itemconfig(tagOrId = f'{x},{y}', fill = END_COLOR)

def read(char,matrix_size):
    ser = serial.Serial()
    ser.baudrate = 115200
    ser.port = 'COM4'
    ser.timeout = 10
    ser.open()
    ser.write(str.encode(f"{char}\n"))

    maze_raw = []
    maze_tab = []
    for i in range(0,matrix_size):
        rawline = ser.readline().decode()

        line = str(bin(int(rawline.replace('\n','').replace('\r',''))))[2:]
        line = '0'*(matrix_size - len(line)) + line
        print(line)
        maze_raw.append(line)

    for y in range(0,matrix_size):
        for x in range(0,matrix_size):
            if maze_raw[y][x] == '1':
                maze_tab.append((y,x))
    print("")  
    ser.close()
    return maze_tab
   

matrix_size = 20
pixel_size = 30
font_size = pixel_size - 10

matrix = makeLevel("test", matrix_size, matrix_size)

colorMatrix = [[0 for x in range(matrix_size)] for y in range(matrix_size)]
for x in range(matrix_size):
    for y in range(matrix_size):
        colorMatrix[x][y] = matrix.tiles[x][y].color

#print(colorMatrix)

width, height = matrix_size * pixel_size, matrix_size * pixel_size + 60

root = tk.Tk()
root.title("A* visualization")

frame = tk.Frame()
frame.pack()

canvas = tk.Canvas(frame, width=width, height=height)
rows, cols = len(colorMatrix), len(colorMatrix[0])

rect_width, rect_height = width // rows, matrix_size * pixel_size // cols
rect_tab = []
rect_row = []
for y, row in enumerate(colorMatrix):
    for x, color in enumerate(row):
        x0, y0 = x * rect_width, y * rect_height
        x1, y1 = x0 + rect_width-1, y0 + rect_height-1
        canvas.create_rectangle(x0, y0, x1, y1, fill='white', width=0, tag =f'{x},{y}')
        canvas.tag_bind(f'{x},{y}' ,"<Button-1>" , func = lambda event ,x = x, y = y: clicked(event, x=x, y=y))

canvas.create_rectangle(10, height - 10, width/2 - 80 , height - 40, fill="gray", width=0, tag ='reset')
canvas.tag_bind('reset' ,"<Button-1>" , func = lambda event ,x = x, y = y: clicked_reset(event, x=x, y=y))

canvas.create_rectangle(width/2 + 80, height - 10, width - 10 , height - 40, fill="gray", width=0, tag ='send')
canvas.tag_bind('send' ,"<Button-1>" , func = lambda event ,x = x, y = y: clicked_send(event, x=x, y=y))

canvas.create_text(110, height - 25, text="CLEAR", fill="black", font=(f'Helvetica {font_size}'))
canvas.create_text(480, height - 25, text="SOLVE", fill="black", font=(f'Helvetica {font_size}'))

canvas.pack()

root.mainloop()