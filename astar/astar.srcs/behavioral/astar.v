`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.03.2023 19:37:51
// Design Name: 
// Module Name: astar
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module astar(
    );
    
    logic [9:0] open_list [0:9] = {0,0,0,0,0,0,0,0,0,0};
    logic [9:0] close_list [0:9] = {0,0,0,0,0,0,0,0,0,0};
    logic [9:0] path [0:9] = {0,0,0,0,0,0,0,0,0,0};
    
    int children_g [0:8][0:8];
    int children_f [0:8][0:8];
    int children_h [0:8][0:8];
    int parent_x [0:9][0:9];
    int parent_y [0:9][0:9];
    logic [8:0] children_v [0:8] = {0,0,0,0,0,0,0,0,0};
    int children_x [0:8] = {0,0,0,0,0,0,0,0,0};
    int children_y [0:8] = {0,0,0,0,0,0,0,0,0};
    
    int cur_node_g [0:9][0:9];
    int cur_node_f [0:9][0:9];
    
    int child = 0;
    
    int open_list_idx = 0;
    
    int cur_g=0;
    int cur_h=0;
    int cur_f=0;
    int cur_x=0;
    int cur_y=0;
    int nxt_x=0;
    int nxt_y=0;
    int node_ax = 1;
    int node_ay = 1;
    
    int node_bx = 3;
    int node_by = 8;
    
    int node_dx = 0;
    int node_dy = 0;
    
    int tmp_x,tmp_y,tmp_g,tmp_h,tmp_f;
    initial begin
    
        open_list[node_ax][node_ay] = 1'b1;
        open_list_idx = 1;
        
        cur_x=node_ax;
        cur_y=node_ay;
        cur_g=0;
        
        cur_node_g[cur_x][cur_y] = 0;
        
        while(open_list_idx > 0) begin
        #1;


            close_list[cur_x][cur_y] = 1'b1;
            open_list[cur_x][cur_y] = 1'b0;
            
            for (int y=0; y<3; y++) begin
                for (int x=0; x<3; x++) begin
                    children_x[(x*3)+y] = cur_x - 1 + x;
                    children_y[(y*3)+x] = cur_y - 1 + y;
                    #1;
                end
            end
            
            for (int y=0; y<3; y++) begin
                for (int x=0; x<3; x++) begin
                    if (close_list[children_x[(x*3)+y]][children_y[(y*3)+x]] == 1'b0) begin
                        if (((cur_x - 1 + x) == cur_x) || ((cur_y - 1 + y) == cur_y)) begin
                            children_g[children_x[(x*3)+y]][children_y[(y*3)+x]] = cur_g + 10;
                        end else begin
                            children_g[children_x[(x*3)+y]][children_y[(y*3)+x]] = cur_g + 14;
                        end
                            children_h[children_x[(x*3)+y]][children_y[(y*3)+x]] = $sqrt((children_x[(x*3)+y] - node_bx)**2 + (children_y[(y*3)+x] - node_by)**2)*10;;
                        children_f[children_x[(x*3)+y]][children_y[(y*3)+x]] = children_h[children_x[(x*3)+y]][children_y[(y*3)+x]] + children_g[children_x[(x*3)+y]][children_y[(y*3)+x]];

                        if (open_list[children_x[(x*3)+y]][children_y[(y*3)+x]] == 1'b0) begin
                            open_list[children_x[(x*3)+y]][children_y[(y*3)+x]] = 1'b1;
                            cur_node_f[children_x[(x*3)+y]][children_y[(y*3)+x]] = children_f[children_x[(x*3)+y]][children_y[(y*3)+x]];
                            cur_node_g[children_x[(x*3)+y]][children_y[(y*3)+x]] = children_g[children_x[(x*3)+y]][children_y[(y*3)+x]];
                            parent_x[children_x[(x*3)+y]][children_y[(y*3)+x]] = cur_x;
                            parent_y[children_x[(x*3)+y]][children_y[(y*3)+x]] = cur_y;

                        end
                    end
                        
                        #1;
                end
            end
            cur_f = 1000;
            for (int y=0; y<10; y++) begin
                for (int x=0; x<10; x++) begin
                    if ((open_list[x][y] == 1'b1)) begin
                       if ( cur_node_f[x][y] < cur_f) begin
                            cur_f = cur_node_f[x][y];
                            cur_g = cur_node_g[x][y];
                            cur_x = x;
                            cur_y = y;

                       end
                    end
                end
                #1;
            end
            #1;
            if ((cur_x == node_bx) && (cur_y == node_by) ) begin
                close_list[cur_x][cur_y] = 1'b1;
                #1;
                
                while((cur_x != node_ax) || (cur_y != node_ay)) begin
                    path[cur_x][cur_y] = 1'b1;
                    tmp_x = parent_x[cur_x][cur_y];    
                    tmp_y = parent_y[cur_x][cur_y];  
                    cur_x = tmp_x;
                    cur_y = tmp_y;
                    #1;              
                end
                path[node_ax][node_ay] = 1'b1;
                #1;
                $finish();
            end
        end
    end
    
endmodule
