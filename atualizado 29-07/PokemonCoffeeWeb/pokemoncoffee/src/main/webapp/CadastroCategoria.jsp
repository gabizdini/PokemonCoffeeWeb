<%-- 
    Document   : CadastroCategoria
    Created on : 29 de jul de 2024, 21:57:36
    Author     : 15464073671
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
 
    <body>
        <h1>Cadastro Categoria</h1>
        <table>
            <form id="cadastroForm" name="cadastroForm" action="${pageContext.request.contextPath}${URL_BASE}/CategoriaControlador" method="get">
                <input type="hidden" name="opcao" value="${opcao}" />
                <input type="hidden" name="codigoCategoria" value="${codigoCategoria}" />
                <p> 
                    <label>Categoria:</label>  
                    <input type="text" name="nomeCategoria" value="${nomeCategoria}" size="40" /> 
                </p>
          
                <td>
                    <input type="submit"  value="Salvar" name="Salvar" />
                </td>
            </form>
            
            <form id="cadastroForm" name="cadastroForm" action="${pageContext.request.contextPath}${URL_BASE}/CategoriaControlador" method="get">
                <td> 
                    <input type="submit" value="cancelar" name="Cancelar">
                </td>
                <input type="hidden" name="opcao" value="Cancelar" />
            </form>
        </table>        
            ${mensagem}
            <table border="1"> 
                <c:if test="${not empty categorias}">
                <tr>
                    <th>Código</th>
                    <th>Categoria</th>
                    <th>Alterar</th>
                    <th>Excluir</th>
                </tr>
            </c:if>
                
                <c:forEach var="categoria" items="${categorias}">
                    <tr>
                        <td>${categoria.codigoCategoria}</td>
                        <td>${categoria.nomeCategoria}</td>
                        <td>
                            <form name="cadastroForm" action="${pageContext.request.contextPath}${URL_BASE}/CategoriaControlador" method="get">
                                <input type="hidden" name="codigoCategoria" value="${categoria.codigoCategoria}">
                                <input type="hidden" name="nomeCategoria" value="${categoria.nomeCategoria}">
                                <input type="hidden" name="opcao" value="editar">
                                <button  type="submit">Editar</button>
                            </form>
                        </td>
                        <td>
                            <form name="cadastroForm" action="${pageContext.request.contextPath}${URL_BASE}/CategoriaControlador" method="get">
                                <input type="hidden" name="codigoCategoria" value="${categoria.codigoCategoria}">
                                <input type="hidden" name="nomeCategoria" value="${categoria.nomeCategoria}">
                                <input type="hidden" name="opcao" value="excluir">
                                <button  type="submit">Excluir</button>
                            </form>
                        </td>
                    </tr>
                </c:forEach> 
                    
    </body>
</html>
