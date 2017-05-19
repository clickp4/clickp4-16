control Initializer(inout Packet packe, out ClickMetadata clickMetadata) {
    action SetChain(chainId, bitmap) {
        clickMetadata.clickBitmap = bitmap;
        clickMetadata.clickId = chainId;
    }

    action Drop() {
        
    }

    action 
    table InitialTable {
        key = {
            packet.ipv4.srcAddr: ternary;
            packet.ipv4.dstAddr: ternary;
            packet.ipv4.protocol: ternary;
        }
        actions = {
            SetChain;
        }

        default_action = 
    }
}