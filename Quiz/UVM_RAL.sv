`include "uvm_macros.svh"
import uvm_pkg::*;
class CTRL extends uvm_reg;
    `uvm_object_utils(CTRL)

    rand uvm_reg_field  SIZE;
    rand uvm_reg_field  OFFSET;
    rand uvm_reg_field  CLR;

    function new(string name = "CTRL");
        super.new(name, 32, UVM_CVR_FIELD_VALS);
    endfunction //new()

    function void build();
        SIZE = uvm_reg_field::type_id::create("SIZE");
        SIZE.configure(.parent(this), 
                       .size(3), 
                       .lsb_pos(0),
                       .access("RW"),
                       .volatile(0),
                       .reset(4'h1), 
                       .has_reset(1),
                       .is_rand(1),
                       .individually_accessible(1));

        OFFSET = uvm_reg_field::type_id::create("OFFSET");
        OFFSET.configure(.parent(this),
                         .size(2), 
                         .lsb_pos(8), 
                         .access("RW"), 
                         .volatile(0), 
                         .reset(2'b0), 
                         .has_reset(1), 
                         .is_rand(1), 
                         .individually_accessible(1));

        CLR = uvm_reg_field::type_id::create("CLR");
        CLR.configure(.parent(this), 
                      .size(1), 
                      .lsb_pos(16), 
                      .access("RW"), 
                      .volatile(0), 
                      .reset(1'b0), 
                      .has_reset(1), 
                      .is_rand(0), 
                      .individually_accessible(1));
    endfunction //build()
endclass //CTRL extends uvm_reg



class STATUS extends uvm_reg;
    `uvm_object_utils(STATUS)

    rand uvm_reg_field  CNT_DROP;
    rand uvm_reg_field  RX_LVL;
    rand uvm_reg_field  TX_LVL;

    function new(string name = "STATUS");
        super.new(name, 32, UVM_CVR_FIELD_VALS);
    endfunction //new()

    function void build();
        CNT_DROP = uvm_reg_field::type_id::create("CNT_DROP");
        CNT_DROP.configure(.parent(this), 
                           .size(3), 
                           .lsb_pos(0),
                           .access("RO"),
                           .volatile(0),
                       .reset(4'h1), 
                       .has_reset(1),
                       .is_rand(1),
                       .individually_accessible(1));

        RX_LVL = uvm_reg_field::type_id::create("RX_LVL");
        RX_LVL.configure(.parent(this),
                         .size(2), 
                         .lsb_pos(8), 
                         .access("RO"), 
                         .volatile(0), 
                         .reset(2'b0), 
                         .has_reset(1), 
                         .is_rand(1), 
                         .individually_accessible(1));

        TX_LVL = uvm_reg_field::type_id::create("TX_LVL");
        TX_LVL.configure(.parent(this), 
                      .size(1), 
                      .lsb_pos(16), 
                      .access("RO"), 
                      .volatile(0), 
                      .reset(1'b0), 
                      .has_reset(1), 
                      .is_rand(0), 
                      .individually_accessible(1));
endfunction //build()
endclass //IRQEN extends uvm_reg


class IRQEN extends uvm_reg;
    `uvm_object_utils(IRQEN)

    rand uvm_reg_field  RX_FIFO_EMPTY;
    rand uvm_reg_field  RX_FIFO_FULL;
    rand uvm_reg_field  TX_FIFO_EMPTY;
    rand uvm_reg_field  TX_FIFO_FULL;
    rand uvm_reg_field  MAX_DROP;

    function new(string name = "IRQEN");
        super.new(name, 32, UVM_CVR_FIELD_VALS);
    endfunction //new()

    function void build();
        RX_FIFO_EMPTY = uvm_reg_field::type_id::create("RX_FIFO_EMPTY");
        RX_FIFO_EMPTY.configure(.parent(this), 
                       .size(1), 
                       .lsb_pos(0),
                       .access("RW"),
                       .volatile(0),
                       .reset(1'b0), 
                       .has_reset(1),
                       .is_rand(0),
                       .individually_accessible(1));

        RX_FIFO_FULL = uvm_reg_field::type_id::create("RX_FIFO_FULL");
        RX_FIFO_FULL.configure(.parent(this),
                         .size(1), 
                         .lsb_pos(1), 
                         .access("RW"), 
                         .volatile(0), 
                         .reset(1'b0), 
                         .has_reset(1), 
                         .is_rand(0), 
                         .individually_accessible(1));

        TX_FIFO_EMPTY = uvm_reg_field::type_id::create("TX_FIFO_EMPTY");
        TX_FIFO_EMPTY.configure(.parent(this), 
                      .size(1), 
                      .lsb_pos(2), 
                      .access("RW"), 
                      .volatile(0), 
                      .reset(1'b0), 
                      .has_reset(1), 
                      .is_rand(0), 
                      .individually_accessible(1));

        TX_FIFO_FULL = uvm_reg_field::type_id::create("TX_FIFO_FULL");
        TX_FIFO_FULL.configure(.parent(this), 
                      .size(1), 
                      .lsb_pos(3), 
                      .access("RW"), 
                      .volatile(0), 
                      .reset(1'b0), 
                      .has_reset(1), 
                      .is_rand(0), 
                      .individually_accessible(1));

        MAX_DROP = uvm_reg_field::type_id::create("MAX_DROP");
        MAX_DROP.configure(.parent(this), 
                      .size(1), 
                      .lsb_pos(4), 
                      .access("RW"), 
                      .volatile(0), 
                      .reset(1'b0), 
                      .has_reset(1), 
                      .is_rand(0), 
                      .individually_accessible(1));
endfunction //build()
endclass //IRQ extends uvm_reg

class IRQ extends uvm_reg;
    `uvm_object_utils(IRQ)

    rand uvm_reg_field  RX_FIFO_EMPTY;
    rand uvm_reg_field  RX_FIFO_FULL;
    rand uvm_reg_field  TX_FIFO_EMPTY;
    rand uvm_reg_field  TX_FIFO_FULL;
    rand uvm_reg_field  MAX_DROP;

    function new(string name = "IRQ");
        super.new(name, 32, UVM_CVR_FIELD_VALS);
    endfunction //new()

    function void build();
        RX_FIFO_EMPTY = uvm_reg_field::type_id::create("RX_FIFO_EMPTY");
        RX_FIFO_EMPTY.configure(.parent(this), 
                                .size(1), 
                                .lsb_pos(0),
                                .access("W1C"),
                                .volatile(1),
                                .reset(1'b0), 
                                .has_reset(1),
                                .is_rand(1),
                                .individually_accessible(1));

        RX_FIFO_FULL = uvm_reg_field::type_id::create("RX_FIFO_FULL");
        RX_FIFO_FULL.configure(.parent(this),
                         .size(1), 
                         .lsb_pos(1), 
                         .access("W1C"), 
                         .volatile(1), 
                         .reset(1'b0), 
                         .has_reset(1), 
                         .is_rand(1), 
                         .individually_accessible(1));

        TX_FIFO_EMPTY = uvm_reg_field::type_id::create("TX_FIFO_EMPTY");
        TX_FIFO_EMPTY.configure(.parent(this), 
                      .size(1), 
                      .lsb_pos(2), 
                      .access("W1C"), 
                      .volatile(1), 
                      .reset(1'b0), 
                      .has_reset(1), 
                      .is_rand(1), 
                      .individually_accessible(1));

        TX_FIFO_FULL = uvm_reg_field::type_id::create("TX_FIFO_FULL");
        TX_FIFO_FULL.configure(.parent(this), 
                      .size(1), 
                      .lsb_pos(3), 
                      .access("W1C"), 
                      .volatile(1), 
                      .reset(1'b0), 
                      .has_reset(1), 
                      .is_rand(1), 
                      .individually_accessible(1));

        MAX_DROP = uvm_reg_field::type_id::create("MAX_DROP");
        MAX_DROP.configure(.parent(this), 
                      .size(1), 
                      .lsb_pos(4), 
                      .access("W1C"), 
                      .volatile(1), 
                      .reset(1'b0), 
                      .has_reset(1), 
                      .is_rand(1), 
                      .individually_accessible(1));
    endfunction //build()
endclass //STATUS extends uvm_reg

class top_reg_block extends uvm_reg_block;
    `uvm_object_utils(top_reg_block)

    rand CTRL CTRL_ins;
    rand STATUS STATUS_ins;
    rand IRQEN IRQEN_ins;
    rand IRQ IRQ_ins;

    function new(string name = "top_reg_block");
        super.new(name, UVM_CVR_FIELD_VALS);
    endfunction //new()
    function void build();

        CTRL_ins = CTRL::type_id::create("CTRL");
        CTRL_ins.build();
        CTRL_ins.configure(this);
        

        STATUS_ins = STATUS::type_id::create("STATUS");
        STATUS_ins.build();
        STATUS_ins.configure(this);


        IRQEN_ins = IRQEN::type_id::create("IRQEN");
        IRQEN_ins.build();
        IRQEN_ins.configure(this);

        IRQ_ins = IRQ::type_id::create("IRQ");
        IRQ_ins.build();
        IRQ_ins.configure(this);


        default_map = create_map("default_map", 'h0, 8, UVM_LITTLE_ENDIAN);
        this.default_map.add_reg(CTRL_ins, 'h0000, "RW");
        this.default_map.add_reg(STATUS_ins, 'h000C, "RO");
        this.default_map.add_reg(IRQEN_ins, 'h00F0, "RW");
        this.default_map.add_reg(IRQ_ins, 'h00F4, "W1C");
        lock_model();
    endfunction //build()
endclass //top_reg_block extends uvm_reg_block


module tb_top_reg_block;
    // Instancia del reg_block
    top_reg_block reg_block_inst;

    initial begin
        // Crear e inicializar el reg_block
        reg_block_inst = new("reg_block_inst");
        reg_block_inst.build();

        // Ejemplo de acceso: escribir y leer registros
        // Escribir en CTRL
       

        // Finalizar simulación
        $finish;
    end
endmodule