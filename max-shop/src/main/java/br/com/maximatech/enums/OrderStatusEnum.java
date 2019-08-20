package br.com.maximatech.enums;

public enum OrderStatusEnum implements CodeEnum {
    NEW(0, "Nova ordem"),
    FINISHED(1, "Finalizado"),
    CANCELED(2, "Cancelado")
    ;

    private  int code;
    private String msg;

    OrderStatusEnum(Integer code, String msg) {
        this.code = code;
        this.msg = msg;
    }

    @Override
    public Integer getCode() {
        return code;
    }
}
