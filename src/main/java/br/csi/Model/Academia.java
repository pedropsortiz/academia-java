package br.csi.Model;

public class Academia {

    private int idAcademia;
    private String cnpjAcademia;
    private String situacaoAcademia;
    private String nomeFantasiaAcademia;
    private String nomeEmpresarialAcademia;
    private String enderecoAcademia;
    private String contatoAcademia;
    private String descricaoAcademia;
    private String fotoAcademia;
    private String logoAcademia;

    public Academia(int idAcademia, String cnpjAcademia, String situacaoAcademia, String nomeFantasiaAcademia, String nomeEmpresarialAcademia, String enderecoAcademia, String contatoAcademia, String descricaoAcademia, String fotoAcademia, String logoAcademia) {
        this.idAcademia = idAcademia;
        this.cnpjAcademia = cnpjAcademia;
        this.situacaoAcademia = situacaoAcademia;
        this.nomeFantasiaAcademia = nomeFantasiaAcademia;
        this.nomeEmpresarialAcademia = nomeEmpresarialAcademia;
        this.enderecoAcademia = enderecoAcademia;
        this.contatoAcademia = contatoAcademia;
        this.descricaoAcademia = descricaoAcademia;
        this.fotoAcademia = fotoAcademia;
        this.logoAcademia = logoAcademia;
    }

    public String getCnpjAcademia() {
        return cnpjAcademia;
    }

    public void setCnpjAcademia(String cnpjAcademia) {
        this.cnpjAcademia = cnpjAcademia;
    }

    public int getIdAcademia() {
        return idAcademia;
    }

    public String getSituacaoAcademia() {
        return situacaoAcademia;
    }

    public String getNomeFantasiaAcademia() {
        return nomeFantasiaAcademia;
    }

    public String getNomeEmpresarialAcademia() {
        return nomeEmpresarialAcademia;
    }

    public String getEnderecoAcademia() {
        return enderecoAcademia;
    }

    public String getContatoAcademia() {
        return contatoAcademia;
    }

    public String getDescricaoAcademia() {
        return descricaoAcademia;
    }

    public String getFotoAcademia() {
        return fotoAcademia;
    }

    public String getLogoAcademia() {
        return logoAcademia;
    }

    public void setIdAcademia(int idAcademia) {
        this.idAcademia = idAcademia;
    }

    public void setSituacaoAcademia(String situacaoAcademia) {
        this.situacaoAcademia = situacaoAcademia;
    }

    public void setNomeFantasiaAcademia(String nomeFantasiaAcademia) {
        this.nomeFantasiaAcademia = nomeFantasiaAcademia;
    }

    public void setNomeEmpresarialAcademia(String nomeEmpresarialAcademia) {
        this.nomeEmpresarialAcademia = nomeEmpresarialAcademia;
    }

    public void setEnderecoAcademia(String enderecoAcademia) {
        this.enderecoAcademia = enderecoAcademia;
    }

    public void setContatoAcademia(String contatoAcademia) {
        this.contatoAcademia = contatoAcademia;
    }

    public void setDescricaoAcademia(String descricaoAcademia) {
        this.descricaoAcademia = descricaoAcademia;
    }

    public void setFotoAcademia(String fotoAcademia) {
        this.fotoAcademia = fotoAcademia;
    }

    public void setLogoAcademia(String logoAcademia) {
        this.logoAcademia = logoAcademia;
    }
}
