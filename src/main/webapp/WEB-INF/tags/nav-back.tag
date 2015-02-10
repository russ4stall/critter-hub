<%@attribute name="title" required="true"%>

<nav class="nav mobile-nav-top">
    <ul>
        <li>
            <a class="nav-button" data-ftrans="slide" href="javascript:history.back()">
                <img src="/assets/img/left-arrow-32.png" height="16" width="16">
                <br/>
                <span>BACK</span>
            </a>
        </li>
        <li class="page-title-nav">
            ${title}
        </li>
    </ul>
</nav>