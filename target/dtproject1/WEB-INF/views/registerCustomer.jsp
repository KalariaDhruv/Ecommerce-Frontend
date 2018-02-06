<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Register Customer</h1>

            <p class="lead">Please fill in your information below:</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/register" method="post" commandName="customer">

        <h3>Basic Info</h3>

     <div class="form-group">
            <label for="name">Name</label>
            <form:input path="customerName" id="name" class="form-Control"/>
            <br />
            <form:errors path="customerName" cssStyle="color: #ff0000"/>
        </div>

        <div class="form-group">
            <label for="email">Email</label> <span style="color: #ff0000">${emailMsg}</span>
            <form:input path="customerEmail" id="email" class="form-Control"/>
            <br />
            <form:errors path="customerEmail" cssStyle="color: #ff0000"/>
        </div>

        <div class="form-group">
            <label for="phone">Phone</label>
            <form:input path="customerPhone" id="phone" class="form-Control" pattern="[0-9]{10}" title="10 digit mobile number" />
        </div>

        <div class="form-group">
            <label for="username">Username</label> <span style="color: #ff0000">${usernameMsg}</span>
            <form:input path="username" id="username" class="form-Control"/>
            <br/>
            <form:errors path="username" cssStyle="color: #ff0000"/>
        </div>

        <div class="form-group">
            <label for="password">Password</label>
            <form:password path="password" id="password" class="form-Control"/>
            <br />
            <form:errors path="password" cssStyle="color: #ff0000"/>
        </div>


         <h3>Billing Address</h3>

        <div class="form-group">
            <label for="billingStreet">Street Name</label>
            <form:input path="billingAddress.streetName" id="billingStreet" class="form-Control"/>
            <br>
            <form:errors path="billingAddress.streetName" cssStyle="color: #ff0000"/>
        </div>

        <div class="form-group">
            <label for="billingApartmentNumber">Apartment Number</label>
            <form:input path="billingAddress.apartmentNumber" id="billingApartmentNumber" class="form-Control"/>
        	<br>
            <form:errors path="billingAddress.apartmentNumber" cssStyle="color: #ff0000"/>
        </div>

        <div class="form-group">
            <label for="billingCity">City</label>
            <form:input path="billingAddress.city" id="billingCity" class="form-Control"/>
            <br>
            <form:errors path="billingAddress.city" cssStyle="color: #ff0000"/>
        </div>

        <div class="form-group">
            <label for="billingState">State</label>
            <form:input path="billingAddress.state" id="billingState" class="form-Control"/>
            <br>
            <form:errors path="billingAddress.state" cssStyle="color: #ff0000"/>
        </div>

        <div class="form-group">
            <label for="billingCountry">Country</label>
            <form:input path="billingAddress.country" id="billingCountry" class="form-Control"/>
            <br>
            <form:errors path="billingAddress.country" cssStyle="color: #ff0000"/>
        </div>

        <div class="form-group">
            <label for="billingZip">Zipcode</label>
            <form:input path="billingAddress.zipCode" id="billingZip" class="form-Control" pattern="[0-9]{6}" title="6 digit zip code"/>
            <br>
            <form:errors path="billingAddress.zipCode" cssStyle="color: #ff0000"/>
        </div>
 

        <h3>Shipping Address</h3>

        <div class="form-group">
            <label for="shippingStreet">Street Name</label>
            <form:input path="shippingAddress.streetName" id="shippingStreet" class="form-Control"/>
            <br>
            <form:errors path="shippingAddress.streetName" cssStyle="color: #ff0000"/>
        </div>

        <div class="form-group">
            <label for="shippingApartmentNumber">Apartment Number</label>
            <form:input path="shippingAddress.apartmentNumber" id="shippingApartmentNumber" class="form-Control"/>
            <br>
            <form:errors path="shippingAddress.apartmentNumber" cssStyle="color: #ff0000"/>
        </div>

        <div class="form-group">
            <label for="shippingCity">City</label>
            <form:input path="shippingAddress.city" id="shippingCity" class="form-Control"/>
            <br>
            <form:errors path="shippingAddress.city" cssStyle="color: #ff0000"/>
        </div>

        <div class="form-group">
            <label for="shippingState">State</label>
            <form:input path="shippingAddress.state" id="shippingState" class="form-Control"/>
            <br>
            <form:errors path="shippingAddress.state" cssStyle="color: #ff0000"/>
        </div>

        <div class="form-group">
            <label for="shippingCountry">Country</label>
            <form:input path="shippingAddress.country" id="shippingCountry" class="form-Control"/>
            <br>
            <form:errors path="shippingAddress.country" cssStyle="color: #ff0000"/>
        </div>

        <div class="form-group">
            <label for="shippingZip">Zipcode</label>
            <form:input path="shippingAddress.zipCode" id="shippingZip" class="form-Control"  pattern="[0-9]{6}" title="6 digit zip code"/>
            <br>
            <form:errors path="shippingAddress.zipCode" cssStyle="color: #ff0000" />
        </div>
 
        <br><br>
        <input type="submit" value="submit" class="btn btn-default">
        <a href="<c:url value="/" />" class="btn btn-default">Cancel</a>
        </form:form>
	
        
</div>
</div>
