{{define "header"}}<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<link rel="shortcut icon" href="/static/img/favicon.png" />
		<meta name="author" content="Unknown, slene" />
		{{if .IsHome}}
		<meta name="description" content="{{.AppDescription}}" />
		<meta name="keywords" content="{{.AppKeywords}}">
		{{end}}

		<!-- Stylesheets -->
		<link href="/static/css/bootstrap.min.css?{{.AppCssVer}}" rel="stylesheet" />
		<link href="/static/css/bootstrap-theme.min.css?{{.AppCssVer}}" rel="stylesheet" />
		<link href="/static/css/font-awesome.min.css?{{.AppCssVer}}" rel="stylesheet" />
		<!--[if IE 7]>
		<link href="/static/css/font-awesome-ie7.min.css?{{.AppCssVer}}" rel="stylesheet" />
		<![endif]-->
		<link href="/static/css/main.css?{{.AppCssVer}}" rel="stylesheet" />
		<!-- <link href="/static/css/link.css?{{.AppCssVer}}" rel="stylesheet" /> -->
		<!-- <link href="/static/css/github.css?{{.AppCssVer}}" rel="stylesheet" /> -->

		<script type="text/javascript" src="/static/js/jquery.min.js?{{.AppJsVer}}"></script>
		<script type="text/javascript" src="/static/js/lib.min.js?{{.AppJsVer}}"></script>
		<script type="text/javascript" src="/static/js/main.js?{{.AppJsVer}}"></script>
{{end}}