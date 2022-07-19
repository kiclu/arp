#include<fstream>
#include<iostream>

uint32_t get_cc(uint32_t bd){
    uint32_t cc = 1;
    for(uint32_t i = 0; i < bd; ++i) cc *= 2;
    return cc;
}

int main(int argc, char* argv[]){
    std::ofstream act;
    act.open(argv[1], std::ios::out | std::ios::binary);

    if(!act.is_open()){
        std::cout << "Error opening file!" << std::endl;
        return -1;
    }

    // const uint16_t bit_depth_r = atol(argv[2]);
    // const uint16_t bit_depth_g = atol(argv[3]);
    // const uint16_t bit_depth_b = atol(argv[4]);
    const uint32_t bit_depth_r = 4;
    const uint32_t bit_depth_g = 4;
    const uint32_t bit_depth_b = 4;
    const uint32_t r_cc = get_cc(bit_depth_r);
    const uint32_t g_cc = get_cc(bit_depth_g);
    const uint32_t b_cc = get_cc(bit_depth_b);
    const uint32_t r_offs = (0xff / r_cc) + 2;
    const uint32_t g_offs = (0xff / g_cc) + 2;
    const uint32_t b_offs = (0xff / b_cc) + 2;

    printf("cc: %u %u %u\n", r_cc, g_cc, b_cc);
    printf("offs: %02x %02x %02x\n", r_offs, g_offs, b_offs);

    for(uint32_t r = 0; r <= 0xff; r += r_offs){
        for(uint32_t g = 0; g <= 0xff; g += g_offs){
            for(uint32_t b = 0; b <= 0xff; b += b_offs){
                act.write((char*)&r, sizeof(char));
                act.write((char*)&g, sizeof(char));
                act.write((char*)&b, sizeof(char));
            }
        }
    }

    act.close();
    return 0;
}