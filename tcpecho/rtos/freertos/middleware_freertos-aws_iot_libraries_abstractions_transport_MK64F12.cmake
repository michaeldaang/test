include_guard(GLOBAL)
message("middleware_freertos-aws_iot_libraries_abstractions_transport component is included.")

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/libraries/abstractions/transport/secure_sockets/transport_secure_sockets.c
)


target_include_directories(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/libraries/abstractions/transport/secure_sockets
)


#OR Logic component
if(CONFIG_USE_middleware_freertos-aws_iot_libraries_coremqtt_MK64F12)
     include(middleware_freertos-aws_iot_libraries_coremqtt_MK64F12)
endif()
if(CONFIG_USE_middleware_freertos-aws_iot_libraries_corehttp_MK64F12)
     include(middleware_freertos-aws_iot_libraries_corehttp_MK64F12)
endif()
if(NOT (CONFIG_USE_middleware_freertos-aws_iot_libraries_coremqtt_MK64F12 OR CONFIG_USE_middleware_freertos-aws_iot_libraries_corehttp_MK64F12))
    message(WARNING "Since middleware_freertos-aws_iot_libraries_coremqtt_MK64F12/middleware_freertos-aws_iot_libraries_corehttp_MK64F12 is not included at first or config in config.cmake file, use middleware_freertos-aws_iot_libraries_coremqtt_MK64F12 by default.")
    include(middleware_freertos-aws_iot_libraries_coremqtt_MK64F12)
endif()

include(middleware_freertos-kernel_MK64F12)

include(middleware_freertos-aws_iot_libraries_abstractions_secure_sockets_MK64F12)

include(middleware_freertos-aws_iot_libraries_logging_MK64F12)

