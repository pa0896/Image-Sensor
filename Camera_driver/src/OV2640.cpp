#include "../Camera_driver/inc/OV2640.hpp"

void OV2640::Init(){
    Sensor_write_register((uint8_t) 0xff, 0x01);
    Sensor_write_register((uint8_t) 0x12, 0x80);

    Sensor_write_register_bulk(OV2640_JPEG_INIT);
    Sensor_write_register_bulk(OV2640_YUV422);
    Sensor_write_register_bulk(OV2640_JPEG);

    Sensor_write_register((uint8_t) 0xff, 0x01);
    Sensor_write_register((uint8_t) 0x15, 0x00);
}

void OV2640::Init(const vector<Register_blob_8> &regs){
    Init();

    Sensor_write_register_bulk(regs);

    // Setup camera, H-sync: High, V-sync:high, Sensor_delay: no Delay, FIFO_mode:FIFO enabled, power_mode:Low_power
    ArduChip_write(0x03, 0b01010000);
}

void OV2640::Capture(uint capture_delay){
    ArduChip_write(0x01, 0x00); // Capture Control Register - Set to capture n+1 frames

    SPI_camera::Capture(capture_delay);
} // OV2640::Capture
