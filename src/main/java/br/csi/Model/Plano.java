package br.csi.Model;

public class Plano {

    private int idPlano;
    private float valorPlano;
    private String mesesPlano;
    private String nomePlano;
    private String descricaoPlano;

    public Plano(int idPlano, float valorPlano, String mesesPlano, String nomePlano, String descricaoPlano) {
        this.idPlano = idPlano;
        this.valorPlano = valorPlano;
        this.mesesPlano = mesesPlano;
        this.nomePlano = nomePlano;
        this.descricaoPlano = descricaoPlano;
    }
    public int getidPlano() {
        return idPlano;
    }

    public void setidPlano(int idPlano) {
        this.idPlano = idPlano;
    }

    public float getValorPlano() {
        return valorPlano;
    }

    public void setValorPlano(float valorPlano) {
        this.valorPlano = valorPlano;
    }

    public String getMesesPlano() {
        return mesesPlano;
    }

    public void setMesesPlano(String mesesPlano) {
        this.mesesPlano = mesesPlano;
    }

    public String getNomePlano() {
        return nomePlano;
    }

    public void setNomePlano(String nomePlano) {
        this.nomePlano = nomePlano;
    }

    public String getDescricaoPlano() {
        return descricaoPlano;
    }

    public void setDescricaoPlano(String descricaoPlano) {
        this.descricaoPlano = descricaoPlano;
    }
}
