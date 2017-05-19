typedef bit<48> MacAddress;
typedef bit<16> EthType;


header Ethernet {
    MacAddress srcAddr;
    MacAddress dstAddr;
    EthType ethType;
}