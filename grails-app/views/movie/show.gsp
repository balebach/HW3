
<%@ page import="hw3.Movie" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'movie.label', default: 'Movie')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="movie.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: movieInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="movie.movieTitle.label" default="Movie Title" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: movieInstance, field: "movieTitle")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="movie.director.label" default="Director" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: movieInstance, field: "director")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="movie.yearProduced.label" default="Year Produced" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${movieInstance?.yearProduced}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="movie.genera.label" default="Genera" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: movieInstance, field: "genera")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="movie.thisMovieIs.label" default="This Movie Is" ></g:message></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: movieInstance, field: "thisMovieIs")}</td>
                            
                        </tr>
                        <tr class align="prop">
                            <td valign="top" class="name">Number of Reviews </td>

                        <td valign="top" class="value">${ (movieInstance.review).size()} </td>
                        </tr>
                        <tr class="prop">
                            <td valign="top" class="name">Average Rating</td>
                            <td valign="top" class="value">${(movieInstance.review.rate.sum())/(movieInstance.review.size())}</td>
                         </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="movie.review.label" default="Review" /></td>
                            
                            <td valign="top" style="text-align: left;" class="value">
                                <ul>
                                <g:each in="${movieInstance.review}" var="r">
                                    <li><g:link controller="review" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${movieInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
