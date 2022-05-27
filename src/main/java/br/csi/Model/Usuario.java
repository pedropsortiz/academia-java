package br.csi.Model;

import java.sql.Date;

public class Usuario {

    private int idUsuario;
    private String nomeUsuario;
    private String emailUsuario;
    private String senhaUsuario;
    private Date dataNascimentoUsuario;
    private String cpfUsuario;
    private char sexoUsuario;

    public Usuario() {
        this.idUsuario = idUsuario;
        this.nomeUsuario = nomeUsuario;
        this.emailUsuario = emailUsuario;
        this.senhaUsuario = senhaUsuario;
        this.dataNascimentoUsuario = dataNascimentoUsuario;
        this.cpfUsuario = cpfUsuario;
        this.sexoUsuario = sexoUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public void setNomeUsuario(String nomeUsuario) {
        this.nomeUsuario = nomeUsuario;
    }

    public void setEmailUsuario(String emailUsuario) {
        this.emailUsuario = emailUsuario;
    }

    public void setSenhaUsuario(String senhaUsuario) {
        this.senhaUsuario = senhaUsuario;
    }

    public void setDataNascimentoUsuario(Date dataNascimentoUsuario) {
        this.dataNascimentoUsuario = dataNascimentoUsuario;
    }

    public void setCpfUsuario(String cpfUsuario) {
        this.cpfUsuario = cpfUsuario;
    }

    public void setSexoUsuario(char sexoUsuario) {
        this.sexoUsuario = sexoUsuario;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public String getNomeUsuario() {
        return nomeUsuario;
    }

    public String getEmailUsuario() {
        return emailUsuario;
    }

    public String getSenhaUsuario() {
        return senhaUsuario;
    }

    public Date getDataNascimentoUsuario() {
        return dataNascimentoUsuario;
    }

    public String getCpfUsuario() {
        return cpfUsuario;
    }

    public char getSexoUsuario() {
        return sexoUsuario;
    }

}
