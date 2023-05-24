<%-- 
    Document   : categorysidebar
    Created on : Apr 27, 2023, 9:42:03 AM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
            <!-- Side bar -->
            <div class="grid__column-2">
              <!-- Navbar item -->
              <nav class="category">
                <!-- Heading navbar -->
                <h3 class="category__heading">
                  <i class="category__heading-icon fa-solid fa-list"></i>
                  Danh Mục
                </h3>
                <!-- List item -->
                <ul class="category-list">
                  <!--<li class="category-item category-link--active">
                    <a href="#" class="category-link">Adidas</a>
                  </li>-->
                  <c:forEach items="${listCategory}" var="o">
                    <li class="category-item ${categoryID == o.id ? "category-link--active" : ""}">
                      <a href="CategoryControl?categoryID=${o.id}" class="category-link">${o.name}</a>
                    </li>
                  </c:forEach>
                </ul>
      
              </nav>
            </div>