BOARDCPPSRC =  $(BOARD_DIR)/board_configuration.cpp \
    $(BOARD_DIR)/default_tune.cpp \


BOARDINC += $(BOARD_DIR)/generated/controllers/generated

# defines SHORT_BOARD_NAME
include $(BOARD_DIR)/meta-info.env

# reduce memory usage monitoring
DDEFS += -DRAM_UNUSED_SIZE=100
DDEFS += -DLED_CRITICAL_ERROR_BRAIN_PIN=Gpio::Unassigned
DDEFS += -DHAL_TRIGGER_USE_PAL=TRUE
DDEFS += -DHAL_VSS_USE_PAL=TRUE

# Define the flash size for the board (This board has 512K STM32F407)
DDEFS += -DMIN_FLASH_SIZE=512

# Enable specific features for the board
DDEFS += -DSTM32_ADC_USE_ADC3=TRUE
DDEFS += -DEFI_SOFTWARE_KNOCK=TRUE
