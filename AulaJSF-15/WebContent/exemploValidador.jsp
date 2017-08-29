<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri = "http://java.sun.com/jsf/html" prefix="h"  %>
<%@taglib uri = "http://java.sun.com/jsf/core" prefix="f"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<f:view>
	<h:form>
		<h:panelGrid columns="3">
			<h:outputText value="Salário:"/>
			<h:inputText id="Salario" value="#{ exemploValidador.salario }" rendered="true" validatorMessage="O salario deve ser maior que 1,00" >
				<f:validateDoubleRange minimum="1"/>
				<f:convertNumber pattern="###,##0.00"/> 
			</h:inputText>
			<h:message for="salario" />
			
			<h:outputText value="Porcentagem aumento:"/>
			<h:inputText id="aumento" value="#{ exemploValidador.porcentagem }" required="true" validatorMessage="A porcentagem deve estar entre 0 e 1">
				<f:validateDoubleRange minimum="0" maximum="1"/>
				<f:convertNumber pattern="0.00"/>
			</h:inputText>
			<h:message for="aumento" />
			
			<h:commandButton actionListener="#{exemploValidador.calcularAumento }" value="calcular" />
			<h:commandButton actionListener="#{ exemploValidador.zerarCampos }" value="zerar" immediate="true"/>		
		
			<h:outputText value="Aumento:"/>
			<h:outputText value="#{exemploValidador.aumento }"/>		
		</h:panelGrid>
	</h:form>
</f:view>

</body>
</html>