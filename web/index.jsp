<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.ArrayList" %>
<%@page import="br.com.eco.ItemComanda" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<% ArrayList<ItemComanda> lista = new ArrayList<ItemComanda>(); 
ItemComanda i1 = new ItemComanda();
i1.setQuantidade(5);
i1.setNome("Cerveja");
i1.setPreco(7.00);
lista.add(i1); 
ItemComanda i2 = new ItemComanda();
i2.setQuantidade(1);
i2.setNome("Bolinho");
i2.setPreco(34.00);
lista.add(i2); 
 %>
<body>
<p>COMANDA</p>
         <input type="submit" value="Add"> 
         <input type="submit" value="Remover"> 
<table>
 	<tr>
 		<td>O que consumiu?</td>
 		<td>Quantidade?</td>
 		<td>Preço?</td>
 	</tr> 
	<tr>
 		<td><input type="text" name="consumiu"></td>
 		<td><input type="text" name="qtd"></td>
 		<td><input type="text" name="preço"></td>
                <input type="submit" value="Add"> 
 	</tr> 

	<tr>
		<td colspan="3"> Lista </td></tr>
		<% 
		double total = 0;
		for(int i = 0;i< lista.size();i++) { 
		ItemComanda item = lista.get(i);
		total += item.getTotal();
		
		%>
 	<tr>
 		<td><%=item.getNome() %></td>
 		<td><input type="number"
       min="1"
       max="5"
       step="1"
       value="<%= item.getQuantidade()%>">
</td>
 		<td><%= item.getPreco() %></td>
 	    <% } %>
	</tr>	
	</table>
<p>Total:<%= total %></p>
<input type="submit" value="Fechar Conta">
</body>
</html>