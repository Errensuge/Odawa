<%-- Dependance --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%-- JSP Code --%>
<!DOCTYPE html>
<html lang="fr">
    <jsp:include page="/ODA-INF/BASE/Head.jsp" />
    <body>
        <jsp:include page="/ODA-INF/BASE/Navbar.jsp" />
        <div class="container ocnt">
            <div class="row">
                <div class="col-md-8">
                    <div class="panel panel-default debug-panel">
                        <div class="panel-body">
                            <p class="debug-titre">Restaurant au hasard!</p>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="panel panel-default page">
                                        <div class="panel-body">
                                            <div class="page-header page-header-debug">
                                                <h4>
                                                    <p class="text-left">
                                                        <a href="/Restaurant?id=<c:out value="${RandomRestaurant.getId()}"/>">
                                                            <c:out value="${RandomRestaurant.getNom()}"/>
                                                        </a>
                                                    </p>
                                                    <p class="text-right txt-debug">
                                                        <small>
                                                            <c:out value="${RandomRestaurant.getGenre() == 1 ? 'Restaurant': 'Snack'}"/>
                                                        </small>
                                                    </p>
                                                </h4>
                                            </div>
                                            <p class="text-right"><span class="badge"><c:out value="${RandomRestaurant.getPremium() == true ? 'P': ''}"/></span></p>
                                            <p class="text-right"><c:out value="${RandomRestaurant.getRestaurateur()}"/></p>
                                            <p><span class="text-muted">Type de Cuisine :</span></br><c:out value="${RandomRestaurant.getTypeCuisine()}"/></p>
                                            <p><span class="text-muted">Adresse :</span></br><c:out value="${RandomRestaurant.getAllOfAdresse()}"/></p> 
                                            <p><span class="text-muted">Fourchette de Tarif :</span></br><c:out value="${RandomRestaurant.getAllBudget()}"/></p>
                                            <p><span class="text-muted">Horaire :</span></br><c:out value="${RandomRestaurant.getFormatHoraire()[day]}, ce ${nomJour} !"/></br>
                                                <a id="Horaire" tabindex="0" role="button" data-toggle="popover" data-trigger="focus" data-content="
                                                   <table>
                                                   <tr>
                                                   <td>
                                                   <c:forEach var="Jour" items="${ListNomJour}">
                                                       <c:out value="${Jour}"/></br>
                                                   </c:forEach>
                                                   </td>
                                                   <td style='padding-left: 5px;'>
                                                   <c:forEach var="Horaire" items="${RandomRestaurant.getFormatHoraire()}">
                                                       <c:out value="${Horaire}"/></br>
                                                   </c:forEach>
                                                   </td>
                                                   </tr>
                                                   </table>">
                                                    Autre ...
                                                </a>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="panel panel-default page">
                                        <div class="panel-body">
                                            <p><span class="text-muted">Description :</span></br><c:out value="${RandomRestaurant.getDescription()}"/></p>
                                        </div>
                                    </div>  
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <p class="debug-titre">Les 3 Meilleurs Restaurant</p>
                            <c:forEach var="Restaurant" items="${BestRestaurants}" >
                                <div class="panel panel-default">
                                    <div class="panel-body">
                                        <h5>
                                            <p class="text-left"><strong><a href="/Restaurant?id=<c:out value="${Restaurant.getId()}"/>"><c:out value="${Restaurant.getNom()}"/></a></strong></p>
                                            <p class="text-right txt-debug"><small><c:out value="${Restaurant.getGenre() == 1 ? 'Restaurant': 'Snack'}"/></small></p>
                                        </h5>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script>
            $('#Horaire').popover({html: true});
        </script>
        <jsp:include page="/ODA-INF/BASE/Footer.jsp" />
    </body>
</html>
