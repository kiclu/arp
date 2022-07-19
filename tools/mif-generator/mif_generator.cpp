#include<fstream>
#include<iostream>
#include<stdio.h>

// usage
// mif_generator <input_file> <output_file> <size in bytes>
int main(int argc, char* argv[]){
    std::fstream in;
    std::fstream out;
    in.open(argv[1], std::ios::in | std::ios::binary);
    out.open(argv[2], std::ios::out | std::ios::binary);

    out << "WIDTH=8;\n";
    out << "DEPTH=" << argv[3] << ";\n";
    out << "ADDRESS_RADIX=HEX;\n";
    out << "DATA_RADIX=HEX;\n";
    out << "CONTENT BEGIN\n\n";
    
    for(size_t i = 0; i < atoi(argv[3]); ++i){
        uint16_t c;
        in.read((char*)&c, 1);
        char buffer[1024];
        sprintf(buffer, "%08x : %02x;\n", i, c);
        out << buffer;
    }

    out << "\nEND;\n";
    in.close();
    out.close();
    return 0;
}
