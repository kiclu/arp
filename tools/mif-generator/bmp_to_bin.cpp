#include<iostream>
#include<fstream>
#include"libbmp.h"

// usage
// ./bmp_to_bin <input_file> <output_file> <input_width> <input_height> <output_width> <output_height> 
int main(int argc, char* argv[]){
    BmpImg img(atol(argv[3]), atol(argv[4]));
    img.read(argv[1]);

    std::fstream bin;
    bin.open(argv[2], std::ios::out | std::ios::binary);

    for(size_t i = 0; i < atol(argv[6]); ++i){
        for(size_t j = 0; j < atol(argv[5]); ++j){
            const uint8_t zero = 0;
            if(i < atol(argv[4]) && j < atol(argv[3])){
                uint8_t rg = (img.red_at(j, i) / 16) << 4 | (img.green_at(j, i) / 16);
                uint8_t bz = (img.blue_at(j, i) / 16) << 4;
                bin.write((char*)&rg, 1);
                bin.write((char*)&bz, 1);
            }
            else{
                bin.write((char*)&zero, 1); bin.write((char*)&zero, 1);
            }
        }
    }

    bin.close();
    return 0;
}