{{define "navbar"}}
<nav id="navbar" class="navbar navbar-default navbar-static-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="logo" href="{{.AppUrl}}">
                <img src="/static/img/bee.gif">
            </a>
        </div>
        <form class="navbar-form navbar-left" role="search">
            <div class="form-group">
                <input id="search-box" class="form-control" type="text" placeholder="{{i18n .Lang "Search"}}" name="q">
            </div>
        </form>
        <div class="collapse navbar-collapse navbar-ex1-collapse">
            <ul class="nav navbar-nav">
                <li {{if .IsHome}}class="active"{{end}}><a href="{{.AppUrl}}">{{i18n .Lang "Home"}}</a></li>
                <li {{if .IsResource}}class="active"{{end}}><a href="/resource">{{i18n .Lang "Resource"}}</a></li>
                <li><a target="_blank" href="http://beego.me">{{i18n .Lang "Official website"}}</a></li>
            </ul>
            <ul class="nav navbar-nav pull-right">
                {{if .IsLogin}}
                <li class="avatar">
                    <img class="small" src="http://gravatar.qiniudn.com/avatar/50c6d70b642671bea1c8144e92f1ac6f?size=48">
                </li>
                {{else}}
                <li {{if .IsLoginPage}}class="active"{{end}}><a href="/login">{{i18n .Lang "Login"}}</a></li>
                <li {{if .IsRegister}}class="active"{{end}}><a href="/register">{{i18n .Lang "Register"}}</a></li>
                {{end}}
            </ul>
        </div>
    </div>
</nav>
{{end}}