/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.idiomas;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Rafael Sousa
 */
public class Alunos {
                    
                    private int id;
                    private String nome;
                    private String endereco;
                    private String telefone;
                    private String email;
                    private int cpf;
                    
                    public static Alunos getAlunos(int id) throws Exception{
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        String url = "jdbc:derby://localhost:1527/db_idiomas";
        Connection con = DriverManager.getConnection(url, "db_idiomas", "db_idiomas");
        String SQL = "SELECT * FROM CUSTOMER WHERE ID_ALUNO = ?" ;
        PreparedStatement st = con.prepareStatement(SQL);
        st.setInt(1, id);
        ResultSet rs = st.executeQuery();
        Alunos a =null;
        if(rs.next()){
            a = new Alunos(
                    rs.getInt("ID_ALUNO"),
                    rs.getString("NOME_ALUNO"),
                    rs.getString("END_ALUNO"),
                    rs.getString("TEL_ALUNO"),
                    rs.getString("EMAIL_ALUNO"),
                    rs.getInt("CPF_ALUNO")
            );
        }
        rs.close(); st.close(); con.close();
        return a;
    }

    public static ArrayList<Alunos> getList() throws Exception{
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        String url = "jdbc:derby://localhost:1527/db_idiomas";
        Connection con = DriverManager.getConnection(url, "db_idiomas", "db_idiomas");
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("SELECT * FROM ALUNO");
        ArrayList<Alunos> list = new ArrayList<>();
        while(rs.next()){
            Alunos a = new Alunos(
                    rs.getInt("ID_ALUNO"),
                    rs.getString("NOME_ALUNO"),
                    rs.getString("END_ALUNO"),
                    rs.getString("TEL_ALUNO"),
                    rs.getString("EMAIL_ALUNO"),
                    rs.getInt("CPF_ALUNO")
            );
            list.add(a);
        }
        rs.close(); st.close(); con.close();
        return list;
    }
    
    
      

    public Alunos(int id, String nome, String endereco, String telefone, String email, int cpf) {
        this.id = id;
        this.nome = nome;
        this.endereco = endereco;
        this.telefone = telefone;
        this.email = email;
        this.cpf = cpf;
    }
                    
                    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEnddereco(String enddereco) {
        this.endereco = enddereco;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getCpf() {
        return cpf;
    }

    public void setCpf(int cpf) {
        this.cpf = cpf;
    }
}
