package net.javaguides.registration.dao;
import net.javaguides.registration.model.usuario;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import java.util.ArrayList;

import javax.swing.JOptionPane;


public class conexao {
	
	public static Connection conexaoDB(){
		Connection conn = null;
		
		try{
			
			String url = "jdbc:mysql://localhost:3306/meubanco?user=root&password=root";
			Class.forName("com.mysql.jdbc.Driver"); 
			conn = DriverManager.getConnection(url);
		}catch(Exception erro){
			JOptionPane.showMessageDialog(null,"erro na conexao" + erro);
		}
		
		return conn;
	}
	
	public static List<usuario> getAllusuarios(){
		
		List<usuario> lista = new ArrayList<usuario>();
		
		try{
			Connection conn = conexaoDB();
			PreparedStatement select = conn.prepareStatement("SELECT * FROM usuario");
			ResultSet resultado = select.executeQuery();
			
			while(resultado.next()){
				usuario usu = new usuario();
				usu.setId(resultado.getInt("id"));
				usu.setNome(resultado.getString("nome"));
				usu.setEmail(resultado.getString("email"));
				usu.setSenha(resultado.getString("senha"));
				
				lista.add(usu);
			}
			
		}catch(Exception erro){
			System.out.println("Houve um pronlema no select" + erro);
		}
		
		return lista;
	}
	
	public void adicionarUsuario(String nome, String email, String senha){
		int status = 0;
		usuario u = new usuario();
		
		u.setNome(nome);
		u.setEmail(email);
		u.setSenha(senha);
		
		try{
			Connection conn = conexaoDB();
			PreparedStatement insert = conn.prepareStatement("INSERT INTO usuario (nome, email, senha) VALUES(?, ?, ?)");
			insert.setString(1, u.getNome());
			insert.setString(2, u.getEmail());
			insert.setString(3, u.getSenha());
			status = insert.executeUpdate();
		}catch(Exception erro){
			System.out.println("Deu erro no insert" + erro);
		}
		
	}
	
	public void deletarUsuario(usuario user){
		int status = 0;
		
		try{
			Connection conn = conexaoDB();
			PreparedStatement delete = conn.prepareStatement("DELETE FROM usuario WHERE id=?");
			delete.setInt(1, user.getId());	
			status = delete.executeUpdate();
		}catch(Exception erro){
			System.out.println("Deu erro no delete" + erro);
		}
	}
	
	public static usuario getRegistroById(int id){
		usuario usu = null;
		
		try{
			Connection conn = conexaoDB();
			PreparedStatement select = conn.prepareStatement("SELECT * FROM usuario WHERE id=?");
			select.setInt(1, id);
			ResultSet resultado = select.executeQuery();
			
			while(resultado.next()){
				usu = new usuario();
				usu.setId(resultado.getInt("id"));
				usu.setNome(resultado.getString("nome"));
				usu.setEmail(resultado.getString("email"));
				usu.setSenha(resultado.getString("senha"));
			}
		}catch(Exception erro){
			System.out.println(erro);
		}
		
		return usu;
	}
	
	
	
	public void editarUsuario(int id, String nome, String email, String senha){
		int status = 0;
		usuario u = new usuario();
		u.setId(id);
		u.setNome(nome);
		u.setEmail(email);
		u.setSenha(senha);
		
		try{
			Connection conn = conexaoDB();
			PreparedStatement update = conn.prepareStatement("UPDATE usuario SET nome=?, email=?, senha=? WHERE id=?");
			update.setString(1, u.getNome());
			update.setString(2, u.getEmail());
			update.setString(3, u.getSenha());
			update.setInt(4, u.getId());
			status = update.executeUpdate();
			
		}catch(Exception erro){
			System.out.println("Erro no update" + erro);
		}
		
	}

		
	}

