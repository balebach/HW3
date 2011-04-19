
<%@ page import="hw3.Movie" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'movie.label', default: 'Movie')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'movie.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="movieTitle" title="${message(code: 'movie.movieTitle.label', default: 'Movie Title')}" />
                        
                            <g:sortableColumn property="director" title="${message(code: 'movie.director.label', default: 'Director')}" />
                        
                            <g:sortableColumn property="yearProduced" title="${message(code: 'movie.yearProduced.label', default: 'Year Produced')}" />
                        
                            <g:sortableColumn property="genera" title="${message(code: 'movie.genera.label', default: 'Genera')}" />
                        
                            <g:sortableColumn property="thisMovieIs" title="${message(code: 'movie.thisMovieIs.label', default: 'This Movie Is')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${movieInstanceList}" status="i" var="movieInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${movieInstance.id}">${fieldValue(bean: movieInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: movieInstance, field: "movieTitle")}</td>
                        
                            <td>${fieldValue(bean: movieInstance, field: "director")}</td>
                        
                            <td><g:formatDate date="${movieInstance.yearProduced}" /></td>
                        
                            <td>${fieldValue(bean: movieInstance, field: "genera")}</td>
                        
                            <td>${fieldValue(bean: movieInstance, field: "thisMovieIs")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${movieInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
