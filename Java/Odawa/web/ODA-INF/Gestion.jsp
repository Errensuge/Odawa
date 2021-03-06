<%-- Dependance --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%-- JSP Code --%>
<!DOCTYPE html>
<html lang="fr">
    <jsp:include page="/ODA-INF/BASE/Head.jsp" />
    <body>
        <jsp:include page="/ODA-INF/BASE/Navbar.jsp" /> 
        <div class="container ocnt">
            <div class="row">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Gestion des restaurants
                                <p class="text-right" style="margin-top: -20px; margin-bottom: 0px;"><a data-toggle="modal" data-target="#myModal" href="#"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span></a></p>
                            </div>
                            <div class="panel-body">
                                <c:forEach var="Restaurant" items="${Restaurants}">
                                    <div class="modal fade bs-example-modal-sm<c:out value="${Restaurant.getId()}"/>" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
                                        <div class="modal-dialog modal-sm">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                    <h4 class="modal-title" id="myModalLabel">Suppression</h4>
                                                </div>
                                                <div class="modal-body">
                                                    Etes-vous s�r de vouloir supprimer ce restaurant ? 
                                                </div>
                                                <div class="modal-footer">
                                                    <button class="btn btn-danger" type="button" class="close" data-dismiss="modal" aria-label="Close">Refuser</button>
                                                    <a href="/Gestion?delete=<c:out value="${Restaurant.getId()}"/>" class="btn btn-danger">Accepter</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                                        <div class="panel panel-default">
                                            <div class="panel-heading" role="tab" id="headingOne">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse<c:out value="${Restaurant.getId()}"/>" aria-expanded="true" aria-controls="collapseOne">
                                                        <c:out value="${Restaurant.getNom()}"/>
                                                    </a>
                                                    <p class="text-right" style="margin-top: -20px; margin-bottom: 0px;"><a href="#" data-toggle="modal" data-target=".bs-example-modal-sm<c:out value="${Restaurant.getId()}"/>"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></a></p>
                                                </h4>
                                            </div>
                                            <div id="collapse<c:out value="${Restaurant.getId()}"/>" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
                                                <div class="panel-body">
                                                    <form class="form-horizontal">
                                                        <div class="form-group">
                                                            <div class="input-group debug-gestrest">
                                                                <span class="input-group-addon grey">Nom</span>
                                                                <input type="text" class="form-control white" value="<c:out value="${Restaurant.getNom()}"/>" disabled>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <div class="col-lg-6">
                                                                <div class="input-group">
                                                                    <span class="input-group-addon">Adresse</span>
                                                                    <input type="text" class="form-control white" value="<c:out value="${Restaurant.getAdresse()}"/>" disabled>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-6">
                                                                <div  class="input-group">
                                                                    <span class="input-group-addon">Num�ro</span>
                                                                    <input type="number" class="form-control white" value="<c:out value="${Restaurant.getNumero()}"/>" disabled>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <div class="col-lg-6">
                                                                <div class="input-group">
                                                                    <span class="input-group-addon">Localit�</span>
                                                                    <input type="text" class="form-control white" value="<c:out value="${Restaurant.getLocalite()}"/>" disabled>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-6">
                                                                <div  class="input-group">
                                                                    <span class="input-group-addon">Zip Code</span>
                                                                    <input type="number" class="form-control white" value="<c:out value="${Restaurant.getZipCode()}"/>" disabled>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <div class="col-lg-12">
                                                                <label class="input-group-addon" style="border-bottom: 0px none; border-right: 1px solid #CCC;">Description</label>
                                                                <textarea class="form-control white" rows="3" disabled><c:out value="${Restaurant.getDescription()}"/></textarea>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <div class="col-lg-6">
                                                                <div class="input-group">
                                                                    <span class="input-group-addon">Budget Min</span>
                                                                    <input type="text" class="form-control white" value="<c:out value="${Restaurant.getBudgetLow()}"/>" disabled>
                                                                    <div class="input-group-addon"> &euro; </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-6">
                                                                <div  class="input-group">
                                                                    <span class="input-group-addon">Budget Max</span>
                                                                    <input type="text" class="form-control white" value="<c:out value="${Restaurant.getBudgetHigh()}"/>" disabled>
                                                                    <div class="input-group-addon"> &euro; </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </form>
                                                    <div class="panel panel-default">
                                                        <div class="panel-heading">
                                                            <h3 class="panel-title">Horaire</h3>
                                                        </div>
                                                        <div class="panel-body">
                                                            <form class="form-horizontal">
                                                                <div class="form-group">
                                                                    <div class="col-lg-6">
                                                                        <div class="input-group date">
                                                                            <span class="input-group-addon nmcursor">Lundi Ouvert.</span>
                                                                            <input type="text" class="form-control white" value="<c:out value="${Restaurant.getArrayHoraire()[0]}"/>" disabled>
                                                                            <span class="input-group-addon nmcursor"><span class="glyphicon glyphicon-time"></span></span>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-lg-6">
                                                                        <div  class="input-group date nmcursor">
                                                                            <span class="input-group-addon nmcursor">Lundi Fermet.</span>
                                                                            <input type="text" class="form-control white" value="<c:out value="${Restaurant.getArrayHoraire()[1]}"/>" disabled>
                                                                            <span class="input-group-addon nmcursor"><span class="glyphicon glyphicon-time"></span></span>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <div class="col-lg-6">
                                                                        <div class="input-group date">
                                                                            <span class="input-group-addon nmcursor">Mardi Ouvert.</span>
                                                                            <input type="text" class="form-control white" value="<c:out value="${Restaurant.getArrayHoraire()[2]}"/>" disabled>
                                                                            <span class="input-group-addon nmcursor"><span class="glyphicon glyphicon-time"></span></span>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-lg-6">
                                                                        <div  class="input-group date">
                                                                            <span class="input-group-addon nmcursor">Mardi Fermet.</span>
                                                                            <input type="text" class="form-control white" value="<c:out value="${Restaurant.getArrayHoraire()[3]}"/>" disabled>
                                                                            <span class="input-group-addon nmcursor"><span class="glyphicon glyphicon-time"></span></span>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <div class="col-lg-6">
                                                                        <div class="input-group date">
                                                                            <span class="input-group-addon nmcursor">Mercredi Ouvert.</span>
                                                                            <input type="text" class="form-control white" value="<c:out value="${Restaurant.getArrayHoraire()[4]}"/>" disabled>
                                                                            <span class="input-group-addon nmcursor"><span class="glyphicon glyphicon-time"></span></span>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-lg-6">
                                                                        <div  class="input-group date">
                                                                            <span class="input-group-addon nmcursor">Mercredi Fermet.</span>
                                                                            <input type="text" class="form-control white" value="<c:out value="${Restaurant.getArrayHoraire()[5]}"/>" disabled>
                                                                            <span class="input-group-addon nmcursor"><span class="glyphicon glyphicon-time"></span></span>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <div class="col-lg-6">
                                                                        <div class="input-group date">
                                                                            <span class="input-group-addon nmcursor">Jeudi Ouvert.</span>
                                                                            <input type="text" class="form-control white" value="<c:out value="${Restaurant.getArrayHoraire()[6]}"/>" disabled>
                                                                            <span class="input-group-addon nmcursor"><span class="glyphicon glyphicon-time"></span></span>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-lg-6">
                                                                        <div  class="input-group date">
                                                                            <span class="input-group-addon nmcursor">Jeudi Fermet.</span>
                                                                            <input type="text" class="form-control white" value="<c:out value="${Restaurant.getArrayHoraire()[7]}"/>" disabled>
                                                                            <span class="input-group-addon nmcursor"><span class="glyphicon glyphicon-time"></span></span>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <div class="col-lg-6">
                                                                        <div class="input-group date">
                                                                            <span class="input-group-addon nmcursor">Vendredi Ouvert.</span>
                                                                            <input type="text" class="form-control white" value="<c:out value="${Restaurant.getArrayHoraire()[8]}"/>" disabled>
                                                                            <span class="input-group-addon nmcursor"><span class="glyphicon glyphicon-time"></span></span>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-lg-6">
                                                                        <div  class="input-group date">
                                                                            <span class="input-group-addon nmcursor">Vendredi Fermet.</span>
                                                                            <input type="text" class="form-control white" value="<c:out value="${Restaurant.getArrayHoraire()[9]}"/>" disabled>
                                                                            <span class="input-group-addon nmcursor"><span class="glyphicon glyphicon-time"></span></span>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <div class="col-lg-6">
                                                                        <div class="input-group date">
                                                                            <span class="input-group-addon nmcursor">Samedi Ouvert.</span>
                                                                            <input type="text" class="form-control white" value="<c:out value="${Restaurant.getArrayHoraire()[10]}"/>" disabled>
                                                                            <span class="input-group-addon nmcursor"><span class="glyphicon glyphicon-time"></span></span>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-lg-6">
                                                                        <div  class="input-group date">
                                                                            <span class="input-group-addon nmcursor">Samedi Fermet.</span>
                                                                            <input type="text" class="form-control white" value="<c:out value="${Restaurant.getArrayHoraire()[11]}"/>" disabled>
                                                                            <span class="input-group-addon nmcursor"><span class="glyphicon glyphicon-time"></span></span>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <div class="col-lg-6">
                                                                        <div class="input-group date">
                                                                            <span class="input-group-addon nmcursor">Dimanche Ouvert.</span>
                                                                            <input type="text" class="form-control white" value="<c:out value="${Restaurant.getArrayHoraire()[12]}"/>" disabled>
                                                                            <span class="input-group-addon nmcursor"><span class="glyphicon glyphicon-time"></span></span>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-lg-6">
                                                                        <div  class="input-group date">
                                                                            <span class="input-group-addon nmcursor">Dimanche Fermet.</span>
                                                                            <input type="text" class="form-control white" value="<c:out value="${Restaurant.getArrayHoraire()[13]}"/>" disabled>
                                                                            <span class="input-group-addon nmcursor"><span class="glyphicon glyphicon-time"></span></span>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </form>
                                                        </div>
                                                    </div>
                                                    <form class="form-horizontal hello-debug">
                                                        <div class="form-group">
                                                            <div class="col-lg-6">
                                                                <div class="input-group">
                                                                    <span class="input-group-addon">
                                                                        <input type="checkbox" <c:out value="${Restaurant.getPremium() == true ? 'checked': ''}"/> disabled="">
                                                                    </span>
                                                                    <input type="text" class="form-control dbg-crsr white" value="Premium"  disabled>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-6">
                                                                <select class="form-control white" disabled>
                                                                    <c:forEach var="Type" items="${Types}">
                                                                        <option value="<c:out value="${Type.getId()}"/>" <c:out value="${Restaurant.getIdTypeCuisine() == Type.getId() ? 'selected': ''}"/>>
                                                                            <c:out value="${Type.getType()}"/>
                                                                        </option>
                                                                    </c:forEach>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <div class="col-sm-10">
                                                                <div class="radio" style="margin-top: -8px;">
                                                                    <label class="radio-inline">
                                                                        <input type="radio" name="rdio" value="1" <c:out value="${Restaurant.getGenre() == 1 ? 'checked': ''}"/> disabled> Restaurant
                                                                    </label>
                                                                    <label class="radio-inline">
                                                                        <input type="radio" name="rdio" value="2" <c:out value="${Restaurant.getGenre() == 2 ? 'checked': ''}"/> disabled> Snack
                                                                    </label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>  
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">Gestion des reservations</div>
                            <div class="panel-body">
                                <div class="panel-group" id="accordion2" role="tablist" aria-multiselectable="true">
                                    <c:forEach var="Reservation" items="${Reservations}">
                                        <div class="panel panel-default <c:out value="${Reservation.getStatus() == 2 ? 'panel-success': ''}"/> <c:out value="${Reservation.getStatus() == 3 ? 'panel-danger': ''}"/>">
                                            <div class="panel-heading" role="tab" id="headingOne">
                                                <h4 class="panel-title"> <a data-toggle="collapse" data-parent="#accordion2" href="#collapseOne<c:out value="${Reservation.getId()}"/>" aria-expanded="true" aria-controls="collapseOne"><c:out value="${Reservation.getPrenom()}"/> <c:out value="${Reservation.getNom()}"/></a></h4>
                                                <p class="text-right" style="margin-top: -20px; margin-bottom: 0px;">
                                                    <span style="margin-right: 5px; margin-left: 5px;" class="glyphicon glyphicon-home" aria-hidden="true"></span>
                                                    <c:forEach var="Restaurant" items="${Restaurants}">
                                                        <c:if test="${ Reservation.getIdRestaurant() == Restaurant.getId() }">
                                                            <c:out value="${Restaurant.getNom()}"/>
                                                        </c:if>
                                                    </c:forEach>
                                                    <span style="margin-right: 5px; margin-left: 5px;" class="glyphicon glyphicon-time " aria-hidden="true"></span> 
                                                    <fmt:formatDate value="${Reservation.getDate()}" pattern="dd/MM/yyyy" />
                                                    <span style="margin-right: 5px; margin-left: 5px;" class="glyphicon <c:out value="${Reservation.getTypeService() == true ? 'glyphicon-adjust':'glyphicon-certificate' }"/>" aria-hidden="true"></span> Service du <c:out value="${Reservation.getTypeService() == true ? 'Soir': 'Midi'}"/>
                                                </p>
                                            </div> 
                                            <div id="collapseOne<c:out value="${Reservation.getId()}"/>" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
                                                <div class="panel-body">
                                                    <div class="panel panel-default">
                                                        <div class="panel-body">
                                                            <form class="form-horizontal">
                                                                <div class="form-group">
                                                                    <label class="col-sm-2 control-label">Nom</label>
                                                                    <div class="col-sm-10">
                                                                        <p class="form-control-static"><c:out value="${Reservation.getNom()}"/></p>
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label class="col-sm-2 control-label">Prenom</label>
                                                                    <div class="col-sm-10">
                                                                        <p class="form-control-static"><c:out value="${Reservation.getPrenom()}"/></p>
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label class="col-sm-2 control-label">Date</label>
                                                                    <div class="col-sm-10">
                                                                        <p class="form-control-static"><fmt:formatDate value="${Reservation.getDate()}" pattern="dd/MM/yyyy"/></p>
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label class="col-sm-2 control-label">Nbre de Personnes</label>
                                                                    <div class="col-sm-10">
                                                                        <p class="form-control-static"><c:out value="${Reservation.getNbPersonnes()}"/></p>
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label class="col-sm-2 control-label">Email</label>
                                                                    <div class="col-sm-10">
                                                                        <p class="form-control-static"><c:out value="${Reservation.getEmail()}"/></p>
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label class="col-sm-2 control-label">Type de Service</label>
                                                                    <div class="col-sm-10">
                                                                        <p class="form-control-static"><c:out value="${Reservation.getTypeService() == true ? 'Soir': 'Midi'}"/></p>
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label class="col-sm-2 control-label">T�l�phone</label>
                                                                    <div class="col-sm-10">
                                                                        <p class="form-control-static"><c:out value="${Reservation.getPhone()}"/></p>
                                                                    </div>
                                                                </div>
                                                            </form>
                                                        </div>
                                                    </div>
                                                    <c:if test="${ Reservation.getStatus() != 2 }"> <a onclick="AccepterPush(${Reservation.getId()})" class="btn btn-success hello-debug">Accepter</a> </c:if>
                                                    <c:if test="${ Reservation.getStatus() != 3 }"> <a onclick="RefuserPush(${Reservation.getId()})" class="btn btn-danger hello-debug">Refuser</a> </c:if>
                                                    </div>
                                                </div>
                                            </div>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal -->
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog" style="width: 750px;">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">Ajouter un Restaurant</h4>
                    </div>
                    <div class="modal-body">
                        <form data-toggle="validator" class="form-horizontal vldt">
                            <div class="form-group">
                                <div class="input-group debug-gestrest">
                                    <span class="input-group-addon">Nom</span>
                                    <input type="text" id="inptNom" class="form-control" required>
                                </div>
                                <div class="col-sm-10">
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <div class="input-group">
                                        <span class="input-group-addon">Adresse</span>
                                        <input type="text" id="inptAdresse" class="form-control" required>
                                    </div>
                                    <div style="height: 1px;" class="help-block with-errors"></div>
                                </div>
                            </div>
                            <div class="col-lg-5 col-lg-offset-1">
                                <div class="form-group">
                                    <div  class="input-group">
                                        <span class="input-group-addon">Num�ro</span>
                                        <input type="text" id="inptNumero" class="form-control" required>
                                    </div>
                                    <div style="height: 1px;" class="help-block with-errors">  </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <div class="input-group">
                                        <span class="input-group-addon">Localit�</span>
                                        <input type="text" id="inptLocalite" class="form-control" required>
                                    </div>
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>
                            <div class="col-lg-5 col-lg-offset-1">
                                <div class="form-group">
                                    <div  class="input-group">
                                        <span class="input-group-addon">Zip Code</span>
                                        <input min="1000" max="9999" type="number" id="inptZip" class="form-control" required>
                                    </div>
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-lg-12">
                                    <label class="input-group-addon labeltxtarea">Description</label>
                                    <textarea class="form-control" id="inptDescr" rows="3" required></textarea>
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>
                            <div class="form-group" style="margin-left: 0px; margin-right: 0px;">
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <div class="input-group">
                                            <span class="input-group-addon">Budget Min</span>
                                            <input type="number" min="1" id="inptBdgLow" class="form-control" required>
                                            <div class="input-group-addon"> &euro; </div>
                                        </div>
                                        <div class="help-block with-errors"></div>
                                    </div>
                                </div>
                                <div class="col-lg-5 col-lg-offset-1">
                                    <div class="form-group">
                                        <div  class="input-group">
                                            <span class="input-group-addon">Budget Max</span>
                                            <input type="number" min="1" id="inptBdgHgt" class="form-control" required>
                                            <div class="input-group-addon"> &euro; </div>
                                        </div>
                                        <div class="help-block with-errors"></div>
                                    </div>
                                </div>
                            </div>
                        </form>
                        <div style="margin-top: 5px;" class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title">Horaire</h3>
                            </div>
                            <div class="panel-body">
                                <h5 class="txt-modal">Entrez 00:00 comme heure d'ouverture et de fermeture si ferm� </h5>
                                <h5 class="txt-modal">Entrez 11:11 comme heure d'ouverture et de fermeture si ouvert 24h/24 </h5>
                                <form data-toggle="validator" class="form-horizontal vldt">
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <div class="input-group date">
                                                <span class="input-group-addon">Lundi Ouvert.</span>
                                                <input id="inptHrLndOuv" type="text" class="form-control" required>
                                                <span class="input-group-addon"><span class="glyphicon glyphicon-time"></span></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-5 col-lg-offset-1">
                                        <div class="form-group">
                                            <div  class="input-group date">
                                                <span class="input-group-addon">Lundi Fermet.</span>
                                                <input id="inptHrLndFrm" type="text" class="form-control" required>
                                                <span class="input-group-addon"><span class="glyphicon glyphicon-time"></span></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <div class="input-group date">
                                                <span class="input-group-addon">Mardi Ouvert.</span>
                                                <input id="inptHrMarOuv" type="text" class="form-control" required>
                                                <span class="input-group-addon"><span class="glyphicon glyphicon-time"></span></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-5 col-lg-offset-1">
                                        <div class="form-group">
                                            <div  class="input-group date">
                                                <span class="input-group-addon">Mardi Fermet.</span>
                                                <input id="inptHrMarFrm" type="text" class="form-control" required>
                                                <span class="input-group-addon"><span class="glyphicon glyphicon-time"></span></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <div class="input-group date">
                                                <span class="input-group-addon">Mercredi Ouvert.</span>
                                                <input id="inptHrMercOuv" type="text" class="form-control" required>
                                                <span class="input-group-addon"><span class="glyphicon glyphicon-time"></span></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-5 col-lg-offset-1">
                                        <div class="form-group">
                                            <div  class="input-group date">
                                                <span class="input-group-addon">Mercredi Fermet.</span>
                                                <input id="inptHrMercFrm" type="text" class="form-control" required>
                                                <span class="input-group-addon"><span class="glyphicon glyphicon-time"></span></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <div class="input-group date">
                                                <span class="input-group-addon">Jeudi Ouvert.</span>
                                                <input id="inptHrJdOuv" type="text" class="form-control" required>
                                                <span class="input-group-addon"><span class="glyphicon glyphicon-time"></span></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-5 col-lg-offset-1">
                                        <div class="form-group">
                                            <div class="input-group date">
                                                <span class="input-group-addon">Jeudi Fermet.</span>
                                                <input id="inptHrJdFrm" type="text" class="form-control" required>
                                                <span class="input-group-addon"><span class="glyphicon glyphicon-time"></span></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <div class="input-group date">
                                                <span class="input-group-addon">Vendredi Ouvert.</span>
                                                <input id="inptHrVndOuv" type="text" class="form-control" required>
                                                <span class="input-group-addon"><span class="glyphicon glyphicon-time"></span></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-5 col-lg-offset-1">
                                        <div class="form-group">
                                            <div  class="input-group date">
                                                <span class="input-group-addon">Vendredi Fermet.</span>
                                                <input id="inptHrVndFrm" type="text" class="form-control" required>
                                                <span class="input-group-addon"><span class="glyphicon glyphicon-time"></span></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <div class="input-group date">
                                                <span class="input-group-addon">Samedi Ouvert.</span>
                                                <input id="inptHrSmdOuv" type="text" class="form-control" required>
                                                <span class="input-group-addon"><span class="glyphicon glyphicon-time"></span></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-5 col-lg-offset-1">
                                        <div class="form-group">
                                            <div  class="input-group date">
                                                <span class="input-group-addon">Samedi Fermet.</span>
                                                <input id="inptHrSmdFrm" type="text" class="form-control" required>
                                                <span class="input-group-addon"><span class="glyphicon glyphicon-time"></span></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <div class="input-group date">
                                                <span class="input-group-addon">Dimanche Ouvert.</span>
                                                <input id="inptHrDmcOuv" type="text" class="form-control" required>
                                                <span class="input-group-addon"><span class="glyphicon glyphicon-time"></span></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-5 col-lg-offset-1">
                                        <div class="form-group">
                                            <div  class="input-group date">
                                                <span class="input-group-addon">Dimanche Fermet.</span>
                                                <input id="inptHrDmcFrm" type="text" class="form-control" required>
                                                <span class="input-group-addon"><span class="glyphicon glyphicon-time"></span></span>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <form class="form-horizontal hello-debug vldt">
                            <div class="form-group">
                                <div class="col-lg-12">
                                    <div  class="input-group">
                                        <span class="input-group-addon">Cuisine</span>
                                        <select id="inptType" class="form-control"> type
                                            <c:forEach var="Type" items="${Types}">
                                                <option value="<c:out value="${Type.getId()}"/>">
                                                    <c:out value="${Type.getType()}"/>
                                                </option>
                                            </c:forEach>
                                        </select>
                                    </div> 
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-10">
                                    <div class="radio" style="margin-top: -8px;">
                                        <label class="radio-inline">
                                            <input type="radio" name="rdio" value="1" checked> Restaurant
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="rdio" value="2"> Snack
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <div class="col-sm-10"><div class="alert alert-danger hidden" style="text-align: left;padding: 9px;" role="alert">Certains champs sont incomplets ou incorrects!</div></div>
                        <div class="col-sm-2"><a onclick="AddRestaurant()" class="btn btn-danger">Enregistrer</a></div>
                    </div>
                </div>
            </div>
        </div>
        <script>
            $('#Horaire').popover({html: true});
            $('.date').datetimepicker({format: 'HH:mm', stepping: '30'});
            function AddRestaurant() {
                if (Validation()) {
                    $.post("/Gestion?action=1", {
                        nom: $("#inptNom").val(),
                        adresse: $("#inptAdresse").val(),
                        numero: $("#inptNumero").val(),
                        localite: $("#inptLocalite").val(),
                        zip: $("#inptZip").val(),
                        descr: $("#inptDescr").val(),
                        bdglow: $("#inptBdgLow").val(),
                        bdghgt: $("#inptBdgHgt").val(),
                        HrLndOuv: $("#inptHrLndOuv").val().split(':').join(''),
                        HrLndFrm: $("#inptHrLndFrm").val().split(':').join(''),
                        HrMarOuv: $("#inptHrMarOuv").val().split(':').join(''),
                        HrMarFrm: $("#inptHrMarFrm").val().split(':').join(''),
                        HrMercOuv: $("#inptHrMercOuv").val().split(':').join(''),
                        HrMercFrm: $("#inptHrMercFrm").val().split(':').join(''),
                        HrJdOuv: $("#inptHrJdOuv").val().split(':').join(''),
                        HrJdFrm: $("#inptHrJdFrm").val().split(':').join(''),
                        HrVndOuv: $("#inptHrVndOuv").val().split(':').join(''),
                        HrVndFrm: $("#inptHrVndFrm").val().split(':').join(''),
                        HrSmdOuv: $("#inptHrSmdOuv").val().split(':').join(''),
                        HrSmdFrm: $("#inptHrSmdFrm").val().split(':').join(''),
                        HrDmcOuv: $("#inptHrDmcOuv").val().split(':').join(''),
                        HrDmcFrm: $("#inptHrDmcFrm").val().split(':').join(''),
                        Type: $("#inptType").val(),
                        Genre: $("input[name=rdio]").filter(':checked').val()
                    }).done(function () {
                        location.reload(true);
                    });
                } else {
                    $(".alert").removeClass("hidden");
                    $(".vldt").validator('validate');
                }
            }
            function Validation() {
                if ($("#inptNom").val() != '') {
                    if ($("#inptAdresse") != '') {
                        if ($("#inptNumero").val() != '') {
                            if ($("#inptLocalite").val() != '') {
                                if ($("#inptZip").val() != '' && $.isNumeric($("#inptZip").val())) {
                                    if ($("#inptDescr").val() != '') {
                                        if ($("#inptBdgLow").val() != '' && $.isNumeric($("#inptBdgLow").val())) {
                                            if ($("#inptBdgHgt").val() != '' && $.isNumeric($("#inptBdgHgt").val())) {
                                                if ($("#inptHrLndOuv").val() != '') {
                                                    if ($("#inptHrLndFrm").val() != '') {
                                                        if ($("#inptHrMarOuv").val() != '') {
                                                            if ($("#inptHrMarFrm").val() != '') {
                                                                if ($("#inptHrMercOuv").val() != '') {
                                                                    if ($("#inptHrMercFrm").val() != '') {
                                                                        if ($("#inptHrJdOuv").val() != '') {
                                                                            if ($("#inptHrJdFrm").val() != '') {
                                                                                if ($("#inptHrVndOuv").val() != '') {
                                                                                    if ($("#inptHrVndFrm").val() != '') {
                                                                                        if ($("#inptHrSmdOuv").val() != '') {
                                                                                            if ($("#inptHrSmdFrm").val() != '') {
                                                                                                if ($("#inptHrDmcOuv").val() != '') {
                                                                                                    if ($("#inptHrDmcFrm").val() != '') {
                                                                                                        var rep = true;
                                                                                                    } else {
                                                                                                        var rep = false;
                                                                                                    }
                                                                                                } else {
                                                                                                    var rep = false;
                                                                                                }
                                                                                            } else {
                                                                                                var rep = false;
                                                                                            }
                                                                                        } else {
                                                                                            var rep = false;
                                                                                        }
                                                                                    } else {
                                                                                        var rep = false;
                                                                                    }
                                                                                } else {
                                                                                    var rep = false;
                                                                                }
                                                                            } else {
                                                                                var rep = false;
                                                                            }
                                                                        } else {
                                                                            var rep = false;
                                                                        }
                                                                    } else {
                                                                        var rep = false;
                                                                    }
                                                                } else {
                                                                    var rep = false;
                                                                }
                                                            } else {
                                                                var rep = false;
                                                            }
                                                        } else {
                                                            var rep = false;
                                                        }
                                                    } else {
                                                        var rep = false;
                                                    }
                                                } else {
                                                    var rep = false;
                                                }
                                            } else {
                                                var rep = false;
                                            }
                                        } else {
                                            var rep = false;
                                        }
                                    } else {
                                        var rep = false;
                                    }
                                } else {
                                    var rep = false;
                                }
                            } else {
                                var rep = false;
                            }
                        } else {
                            var rep = false;
                        }
                    } else {
                        var rep = false;
                    }
                } else {
                    var rep = false;
                }
                return rep;
            }
            function AccepterPush(id) {
                $.post("/Gestion?action=2", {
                    id: id,
                    choix: 2
                }).done(function () {
                    location.reload(true);
                });
            }
            function RefuserPush(id) {
                $.post("/Gestion?action=2", {
                    id: id,
                    choix: 3
                }).done(function () {
                    location.reload(true);
                });
            }
        </script>
        <jsp:include page="/ODA-INF/BASE/Footer.jsp" />
    </body>
</html>