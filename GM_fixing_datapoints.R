


<!DOCTYPE html>
<html lang="en" class=" is-copy-enabled">
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# object: http://ogp.me/ns/object# article: http://ogp.me/ns/article# profile: http://ogp.me/ns/profile#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Language" content="en">
    <meta name="viewport" content="width=1020">
    
    
    <title>Anderson-meta/GM_fixing_datapoints.R at 1f60972de1837324a0e56583ad0fcec111694adb · Joe-Hilgard/Anderson-meta</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub">
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub">
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-114.png">
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114.png">
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-144.png">
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144.png">
    <meta property="fb:app_id" content="1401488693436528">

      <meta content="@github" name="twitter:site" /><meta content="summary" name="twitter:card" /><meta content="Joe-Hilgard/Anderson-meta" name="twitter:title" /><meta content="Anderson-meta - My inspection and re-analysis of the Anderson et al. (2010) meta-analysis." name="twitter:description" /><meta content="https://avatars1.githubusercontent.com/u/6798949?v=3&amp;s=400" name="twitter:image:src" />
      <meta content="GitHub" property="og:site_name" /><meta content="object" property="og:type" /><meta content="https://avatars1.githubusercontent.com/u/6798949?v=3&amp;s=400" property="og:image" /><meta content="Joe-Hilgard/Anderson-meta" property="og:title" /><meta content="https://github.com/Joe-Hilgard/Anderson-meta" property="og:url" /><meta content="Anderson-meta - My inspection and re-analysis of the Anderson et al. (2010) meta-analysis." property="og:description" />
      <meta name="browser-stats-url" content="https://api.github.com/_private/browser/stats">
    <meta name="browser-errors-url" content="https://api.github.com/_private/browser/errors">
    <link rel="assets" href="https://assets-cdn.github.com/">
    <link rel="web-socket" href="wss://live.github.com/_sockets/Njc5ODk0OTpmNmE3ZmNjZTdiYWI1NWE4NjIxYjkzZWE2MjA5ZGE2NTpiNWVkM2IzNDI4OThiMWU3OGRhMzc2NTk2MDUwZjBiOGYxMGY4NDFlOWE1YjdmYjIyYTNhZDA4NGE2YzI5NGY0--a045fbf8caa4c18024860cb6aa91d92a1e081981">
    <meta name="pjax-timeout" content="1000">
    <link rel="sudo-modal" href="/sessions/sudo_modal">

    <meta name="msapplication-TileImage" content="/windows-tile.png">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="selected-link" value="repo_source" data-pjax-transient>

    <meta name="google-site-verification" content="KT5gs8h0wvaagLKAVWq8bbeNwnZZK1r1XQysX3xurLU">
    <meta name="google-analytics" content="UA-3769691-2">

<meta content="collector.githubapp.com" name="octolytics-host" /><meta content="github" name="octolytics-app-id" /><meta content="805B3AFE:0D1D:18D2BF24:5628E26B" name="octolytics-dimension-request_id" /><meta content="6798949" name="octolytics-actor-id" /><meta content="Joe-Hilgard" name="octolytics-actor-login" /><meta content="0b150f3a3220aa863318c1276e1786cc8eccab61057b7f5ae7caf7a4677a9bef" name="octolytics-actor-hash" />

<meta content="Rails, view, blob#show" data-pjax-transient="true" name="analytics-event" />


  <meta class="js-ga-set" name="dimension1" content="Logged In">
    <meta class="js-ga-set" name="dimension4" content="Current repo nav">




    <meta name="is-dotcom" content="true">
        <meta name="hostname" content="github.com">
    <meta name="user-login" content="Joe-Hilgard">

      <link rel="mask-icon" href="https://assets-cdn.github.com/pinned-octocat.svg" color="#4078c0">
      <link rel="icon" type="image/x-icon" href="https://assets-cdn.github.com/favicon.ico">

    <meta content="f2877793d23dc2200526548cadba0edd12d32142" name="form-nonce" />

    <link crossorigin="anonymous" href="https://assets-cdn.github.com/assets/github-ce671588d7b6afbb8bc61feba5b37b4acc3341aec654ff7a2405b657922ff0c1.css" integrity="sha256-zmcViNe2r7uLxh/rpbN7SswzQa7GVP96JAW2V5Iv8ME=" media="all" rel="stylesheet" />
    <link crossorigin="anonymous" href="https://assets-cdn.github.com/assets/github2-8d66f9bfcef65682f8b799f2330467be836c483d58670c9388d40c9e4c0492a3.css" integrity="sha256-jWb5v872VoL4t5nyMwRnvoNsSD1YZwyTiNQMnkwEkqM=" media="all" rel="stylesheet" />
    
    
    


    <meta http-equiv="x-pjax-version" content="f7a60445478c6154531fdca94f3ffd1b">

      
  <meta name="description" content="Anderson-meta - My inspection and re-analysis of the Anderson et al. (2010) meta-analysis.">
  <meta name="go-import" content="github.com/Joe-Hilgard/Anderson-meta git https://github.com/Joe-Hilgard/Anderson-meta.git">

  <meta content="6798949" name="octolytics-dimension-user_id" /><meta content="Joe-Hilgard" name="octolytics-dimension-user_login" /><meta content="44682868" name="octolytics-dimension-repository_id" /><meta content="Joe-Hilgard/Anderson-meta" name="octolytics-dimension-repository_nwo" /><meta content="true" name="octolytics-dimension-repository_public" /><meta content="false" name="octolytics-dimension-repository_is_fork" /><meta content="44682868" name="octolytics-dimension-repository_network_root_id" /><meta content="Joe-Hilgard/Anderson-meta" name="octolytics-dimension-repository_network_root_nwo" />
  <link href="https://github.com/Joe-Hilgard/Anderson-meta/commits/1f60972de1837324a0e56583ad0fcec111694adb.atom" rel="alternate" title="Recent Commits to Anderson-meta:1f60972de1837324a0e56583ad0fcec111694adb" type="application/atom+xml">

  </head>


  <body class="logged_in   env-production windows vis-public page-blob">
    <a href="#start-of-content" tabindex="1" class="accessibility-aid js-skip-to-content">Skip to content</a>

    
    
    



      <div class="header header-logged-in true" role="banner">
  <div class="container clearfix">

    <a class="header-logo-invertocat" href="https://github.com/" data-hotkey="g d" aria-label="Homepage" data-ga-click="Header, go to dashboard, icon:logo">
  <span class="mega-octicon octicon-mark-github"></span>
</a>


      <div class="site-search repo-scope js-site-search" role="search">
          <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/Joe-Hilgard/Anderson-meta/search" class="js-site-search-form" data-global-search-url="/search" data-repo-search-url="/Joe-Hilgard/Anderson-meta/search" method="get"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div>
  <label class="js-chromeless-input-container form-control">
    <div class="scope-badge">This repository</div>
    <input type="text"
      class="js-site-search-focus js-site-search-field is-clearable chromeless-input"
      data-hotkey="s"
      name="q"
      placeholder="Search"
      aria-label="Search this repository"
      data-global-scope-placeholder="Search GitHub"
      data-repo-scope-placeholder="Search"
      tabindex="1"
      autocapitalize="off">
  </label>
</form>
      </div>

      <ul class="header-nav left" role="navigation">
        <li class="header-nav-item">
          <a href="/pulls" class="js-selected-navigation-item header-nav-link" data-ga-click="Header, click, Nav menu - item:pulls context:user" data-hotkey="g p" data-selected-links="/pulls /pulls/assigned /pulls/mentioned /pulls">
            Pull requests
</a>        </li>
        <li class="header-nav-item">
          <a href="/issues" class="js-selected-navigation-item header-nav-link" data-ga-click="Header, click, Nav menu - item:issues context:user" data-hotkey="g i" data-selected-links="/issues /issues/assigned /issues/mentioned /issues">
            Issues
</a>        </li>
          <li class="header-nav-item">
            <a class="header-nav-link" href="https://gist.github.com/" data-ga-click="Header, go to gist, text:gist">Gist</a>
          </li>
      </ul>

    
<ul class="header-nav user-nav right" id="user-links">
  <li class="header-nav-item">
      <span class="js-socket-channel js-updatable-content"
        data-channel="notification-changed:Joe-Hilgard"
        data-url="/notifications/header">
      <a href="/notifications" aria-label="You have no unread notifications" class="header-nav-link notification-indicator tooltipped tooltipped-s" data-ga-click="Header, go to notifications, icon:read" data-hotkey="g n">
          <span class="mail-status all-read"></span>
          <span class="octicon octicon-bell"></span>
</a>  </span>

  </li>

  <li class="header-nav-item dropdown js-menu-container">
    <a class="header-nav-link tooltipped tooltipped-s js-menu-target" href="/new"
       aria-label="Create new…"
       data-ga-click="Header, create new, icon:add">
      <span class="octicon octicon-plus left"></span>
      <span class="dropdown-caret"></span>
    </a>

    <div class="dropdown-menu-content js-menu-content">
      <ul class="dropdown-menu dropdown-menu-sw">
        
<a class="dropdown-item" href="/new" data-ga-click="Header, create new repository">
  New repository
</a>


  <a class="dropdown-item" href="/organizations/new" data-ga-click="Header, create new organization">
    New organization
  </a>



  <div class="dropdown-divider"></div>
  <div class="dropdown-header">
    <span title="Joe-Hilgard/Anderson-meta">This repository</span>
  </div>
    <a class="dropdown-item" href="/Joe-Hilgard/Anderson-meta/issues/new" data-ga-click="Header, create new issue">
      New issue
    </a>
    <a class="dropdown-item" href="/Joe-Hilgard/Anderson-meta/settings/collaboration" data-ga-click="Header, create new collaborator">
      New collaborator
    </a>

      </ul>
    </div>
  </li>

  <li class="header-nav-item dropdown js-menu-container">
    <a class="header-nav-link name tooltipped tooltipped-s js-menu-target" href="/Joe-Hilgard"
       aria-label="View profile and more"
       data-ga-click="Header, show menu, icon:avatar">
      <img alt="@Joe-Hilgard" class="avatar" height="20" src="https://avatars1.githubusercontent.com/u/6798949?v=3&amp;s=40" width="20" />
      <span class="dropdown-caret"></span>
    </a>

    <div class="dropdown-menu-content js-menu-content">
      <div class="dropdown-menu  dropdown-menu-sw">
        <div class=" dropdown-header header-nav-current-user css-truncate">
            Signed in as <strong class="css-truncate-target">Joe-Hilgard</strong>

        </div>


        <div class="dropdown-divider"></div>

          <a class="dropdown-item" href="/Joe-Hilgard" data-ga-click="Header, go to profile, text:your profile">
            Your profile
          </a>
        <a class="dropdown-item" href="/stars" data-ga-click="Header, go to starred repos, text:your stars">
          Your stars
        </a>
        <a class="dropdown-item" href="/explore" data-ga-click="Header, go to explore, text:explore">
          Explore
        </a>
          <a class="dropdown-item" href="/integrations" data-ga-click="Header, go to integrations, text:integrations">
            Integrations
          </a>
        <a class="dropdown-item" href="https://help.github.com" data-ga-click="Header, go to help, text:help">
          Help
        </a>

          <div class="dropdown-divider"></div>

          <a class="dropdown-item" href="/settings/profile" data-ga-click="Header, go to settings, icon:settings">
            Settings
          </a>

          <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/logout" class="logout-form" data-form-nonce="f2877793d23dc2200526548cadba0edd12d32142" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="bawzYByqcGPFhrCtY7kWk3UV1vJO9KEM5S7vkcx0jetK4NnHtnjQ1XEwmuazspxQ93UgS4vfuBknFvKO575Nqw==" /></div>
            <button class="dropdown-item dropdown-signout" data-ga-click="Header, sign out, icon:logout">
              Sign out
            </button>
</form>
      </div>
    </div>
  </li>
</ul>


    
  </div>
</div>

      

      


    <div id="start-of-content" class="accessibility-aid"></div>

    <div id="js-flash-container">
</div>


    <div role="main" class="main-content">
        <div itemscope itemtype="http://schema.org/WebPage">
    <div class="pagehead repohead instapaper_ignore readability-menu">

      <div class="container">

        <div class="clearfix">
          

<ul class="pagehead-actions">

  <li>
      <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/notifications/subscribe" class="js-social-container" data-autosubmit="true" data-form-nonce="f2877793d23dc2200526548cadba0edd12d32142" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="Wuzu35UQiTML0XIafOe4MC1F8wqFvYQzZOj/tceXGmL+I/OICfhWJwZk0v6Tb317jHbiphhN5zN+Of1gYKSbcA==" /></div>    <input id="repository_id" name="repository_id" type="hidden" value="44682868" />

      <div class="select-menu js-menu-container js-select-menu">
        <a href="/Joe-Hilgard/Anderson-meta/subscription"
          class="btn btn-sm btn-with-count select-menu-button js-menu-target" role="button" tabindex="0" aria-haspopup="true"
          data-ga-click="Repository, click Watch settings, action:blob#show">
          <span class="js-select-button">
            <span class="octicon octicon-eye"></span>
            Unwatch
          </span>
        </a>
        <a class="social-count js-social-count" href="/Joe-Hilgard/Anderson-meta/watchers">
          1
        </a>

        <div class="select-menu-modal-holder">
          <div class="select-menu-modal subscription-menu-modal js-menu-content" aria-hidden="true">
            <div class="select-menu-header">
              <span class="select-menu-title">Notifications</span>
              <span class="octicon octicon-x js-menu-close" role="button" aria-label="Close"></span>
            </div>

            <div class="select-menu-list js-navigation-container" role="menu">

              <div class="select-menu-item js-navigation-item " role="menuitem" tabindex="0">
                <span class="select-menu-item-icon octicon octicon-check"></span>
                <div class="select-menu-item-text">
                  <input id="do_included" name="do" type="radio" value="included" />
                  <span class="select-menu-item-heading">Not watching</span>
                  <span class="description">Be notified when participating or @mentioned.</span>
                  <span class="js-select-button-text hidden-select-button-text">
                    <span class="octicon octicon-eye"></span>
                    Watch
                  </span>
                </div>
              </div>

              <div class="select-menu-item js-navigation-item selected" role="menuitem" tabindex="0">
                <span class="select-menu-item-icon octicon octicon octicon-check"></span>
                <div class="select-menu-item-text">
                  <input checked="checked" id="do_subscribed" name="do" type="radio" value="subscribed" />
                  <span class="select-menu-item-heading">Watching</span>
                  <span class="description">Be notified of all conversations.</span>
                  <span class="js-select-button-text hidden-select-button-text">
                    <span class="octicon octicon-eye"></span>
                    Unwatch
                  </span>
                </div>
              </div>

              <div class="select-menu-item js-navigation-item " role="menuitem" tabindex="0">
                <span class="select-menu-item-icon octicon octicon-check"></span>
                <div class="select-menu-item-text">
                  <input id="do_ignore" name="do" type="radio" value="ignore" />
                  <span class="select-menu-item-heading">Ignoring</span>
                  <span class="description">Never be notified.</span>
                  <span class="js-select-button-text hidden-select-button-text">
                    <span class="octicon octicon-mute"></span>
                    Stop ignoring
                  </span>
                </div>
              </div>

            </div>

          </div>
        </div>
      </div>
</form>
  </li>

  <li>
    
  <div class="js-toggler-container js-social-container starring-container ">

    <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/Joe-Hilgard/Anderson-meta/unstar" class="js-toggler-form starred js-unstar-button" data-form-nonce="f2877793d23dc2200526548cadba0edd12d32142" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="E/E0v4NGj6FBaC07hIdVFo/6ss0HGo4zOGMgjPC2ZjS8wTNAoryibw89dTnv/d4D9qv/vpLxjdtn3PtktHriWA==" /></div>
      <button
        class="btn btn-sm btn-with-count js-toggler-target"
        aria-label="Unstar this repository" title="Unstar Joe-Hilgard/Anderson-meta"
        data-ga-click="Repository, click unstar button, action:blob#show; text:Unstar">
        <span class="octicon octicon-star"></span>
        Unstar
      </button>
        <a class="social-count js-social-count" href="/Joe-Hilgard/Anderson-meta/stargazers">
          0
        </a>
</form>
    <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/Joe-Hilgard/Anderson-meta/star" class="js-toggler-form unstarred js-star-button" data-form-nonce="f2877793d23dc2200526548cadba0edd12d32142" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="PI1/h1t/mUzuJmcl3ADc+zyqpCochZ7fftBlCx9o6pYTzp/gkN1JOHvUck9BEYIqdS/Imzq6JPZSqpXUNAKY2g==" /></div>
      <button
        class="btn btn-sm btn-with-count js-toggler-target"
        aria-label="Star this repository" title="Star Joe-Hilgard/Anderson-meta"
        data-ga-click="Repository, click star button, action:blob#show; text:Star">
        <span class="octicon octicon-star"></span>
        Star
      </button>
        <a class="social-count js-social-count" href="/Joe-Hilgard/Anderson-meta/stargazers">
          0
        </a>
</form>  </div>

  </li>

  <li>
          <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/Joe-Hilgard/Anderson-meta/fork" class="btn-with-count" data-form-nonce="f2877793d23dc2200526548cadba0edd12d32142" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="PBH5tbbPdP/qvW9EflVliipPfddlMgpgzdmrXSgOACL420cWa8X0hWp+Zf1kkbN+/TCtpwDw8dJ2tUyOy888jw==" /></div>
            <button
                type="submit"
                class="btn btn-sm btn-with-count"
                data-ga-click="Repository, show fork modal, action:blob#show; text:Fork"
                title="Fork your own copy of Joe-Hilgard/Anderson-meta to your account"
                aria-label="Fork your own copy of Joe-Hilgard/Anderson-meta to your account">
              <span class="octicon octicon-repo-forked"></span>
              Fork
            </button>
</form>
    <a href="/Joe-Hilgard/Anderson-meta/network" class="social-count">
      0
    </a>
  </li>
</ul>

          <h1 itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="entry-title public ">
  <span class="mega-octicon octicon-repo"></span>
  <span class="author"><a href="/Joe-Hilgard" class="url fn" itemprop="url" rel="author"><span itemprop="title">Joe-Hilgard</span></a></span><!--
--><span class="path-divider">/</span><!--
--><strong><a href="/Joe-Hilgard/Anderson-meta" data-pjax="#js-repo-pjax-container">Anderson-meta</a></strong>

  <span class="page-context-loader">
    <img alt="" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
  </span>

</h1>

        </div>
      </div>
    </div>

    <div class="container">
      <div class="repository-with-sidebar repo-container new-discussion-timeline ">
        <div class="repository-sidebar clearfix">
          
<nav class="sunken-menu repo-nav js-repo-nav js-sidenav-container-pjax js-octicon-loaders"
     role="navigation"
     data-pjax="#js-repo-pjax-container"
     data-issue-count-url="/Joe-Hilgard/Anderson-meta/issues/counts">
  <ul class="sunken-menu-group">
    <li class="tooltipped tooltipped-w" aria-label="Code">
      <a href="/Joe-Hilgard/Anderson-meta" aria-label="Code" aria-selected="true" class="js-selected-navigation-item selected sunken-menu-item" data-hotkey="g c" data-selected-links="repo_source repo_downloads repo_commits repo_releases repo_tags repo_branches /Joe-Hilgard/Anderson-meta">
        <span class="octicon octicon-code"></span> <span class="full-word">Code</span>
        <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>    </li>

      <li class="tooltipped tooltipped-w" aria-label="Issues">
        <a href="/Joe-Hilgard/Anderson-meta/issues" aria-label="Issues" class="js-selected-navigation-item sunken-menu-item" data-hotkey="g i" data-selected-links="repo_issues repo_labels repo_milestones /Joe-Hilgard/Anderson-meta/issues">
          <span class="octicon octicon-issue-opened"></span> <span class="full-word">Issues</span>
          <span class="js-issue-replace-counter"></span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

    <li class="tooltipped tooltipped-w" aria-label="Pull requests">
      <a href="/Joe-Hilgard/Anderson-meta/pulls" aria-label="Pull requests" class="js-selected-navigation-item sunken-menu-item" data-hotkey="g p" data-selected-links="repo_pulls /Joe-Hilgard/Anderson-meta/pulls">
          <span class="octicon octicon-git-pull-request"></span> <span class="full-word">Pull requests</span>
          <span class="js-pull-replace-counter"></span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>    </li>

      <li class="tooltipped tooltipped-w" aria-label="Wiki">
        <a href="/Joe-Hilgard/Anderson-meta/wiki" aria-label="Wiki" class="js-selected-navigation-item sunken-menu-item" data-hotkey="g w" data-selected-links="repo_wiki /Joe-Hilgard/Anderson-meta/wiki">
          <span class="octicon octicon-book"></span> <span class="full-word">Wiki</span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>
  </ul>
  <div class="sunken-menu-separator"></div>
  <ul class="sunken-menu-group">

    <li class="tooltipped tooltipped-w" aria-label="Pulse">
      <a href="/Joe-Hilgard/Anderson-meta/pulse" aria-label="Pulse" class="js-selected-navigation-item sunken-menu-item" data-selected-links="pulse /Joe-Hilgard/Anderson-meta/pulse">
        <span class="octicon octicon-pulse"></span> <span class="full-word">Pulse</span>
        <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>    </li>

    <li class="tooltipped tooltipped-w" aria-label="Graphs">
      <a href="/Joe-Hilgard/Anderson-meta/graphs" aria-label="Graphs" class="js-selected-navigation-item sunken-menu-item" data-selected-links="repo_graphs repo_contributors /Joe-Hilgard/Anderson-meta/graphs">
        <span class="octicon octicon-graph"></span> <span class="full-word">Graphs</span>
        <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>    </li>
  </ul>


    <div class="sunken-menu-separator"></div>
    <ul class="sunken-menu-group">
      <li class="tooltipped tooltipped-w" aria-label="Settings">
        <a href="/Joe-Hilgard/Anderson-meta/settings" aria-label="Settings" class="js-selected-navigation-item sunken-menu-item" data-selected-links="repo_settings repo_branch_settings hooks /Joe-Hilgard/Anderson-meta/settings">
          <span class="octicon octicon-gear"></span> <span class="full-word">Settings</span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>
    </ul>
</nav>

            <div class="only-with-full-nav">
                
<div class="js-clone-url clone-url open"
  data-protocol-type="http">
  <h3 class="text-small text-muted"><span class="text-emphasized">HTTPS</span> clone URL</h3>
  <div class="input-group js-zeroclipboard-container">
    <input type="text" class="input-mini text-small text-muted input-monospace js-url-field js-zeroclipboard-target"
           value="https://github.com/Joe-Hilgard/Anderson-meta.git" readonly="readonly" aria-label="HTTPS clone URL">
    <span class="input-group-button">
      <button aria-label="Copy to clipboard" class="js-zeroclipboard btn btn-sm zeroclipboard-button tooltipped tooltipped-s" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>

  
<div class="js-clone-url clone-url "
  data-protocol-type="ssh">
  <h3 class="text-small text-muted"><span class="text-emphasized">SSH</span> clone URL</h3>
  <div class="input-group js-zeroclipboard-container">
    <input type="text" class="input-mini text-small text-muted input-monospace js-url-field js-zeroclipboard-target"
           value="git@github.com:Joe-Hilgard/Anderson-meta.git" readonly="readonly" aria-label="SSH clone URL">
    <span class="input-group-button">
      <button aria-label="Copy to clipboard" class="js-zeroclipboard btn btn-sm zeroclipboard-button tooltipped tooltipped-s" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>

  
<div class="js-clone-url clone-url "
  data-protocol-type="subversion">
  <h3 class="text-small text-muted"><span class="text-emphasized">Subversion</span> checkout URL</h3>
  <div class="input-group js-zeroclipboard-container">
    <input type="text" class="input-mini text-small text-muted input-monospace js-url-field js-zeroclipboard-target"
           value="https://github.com/Joe-Hilgard/Anderson-meta" readonly="readonly" aria-label="Subversion checkout URL">
    <span class="input-group-button">
      <button aria-label="Copy to clipboard" class="js-zeroclipboard btn btn-sm zeroclipboard-button tooltipped tooltipped-s" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>



<div class="clone-options text-small text-muted">You can clone with
  <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/users/set_protocol?protocol_selector=http&amp;protocol_type=push" class="inline-form js-clone-selector-form is-enabled" data-form-nonce="f2877793d23dc2200526548cadba0edd12d32142" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="v4IxJlI6nFAgAsEAjPyTonoFnlys9gZS7oTa206TvEJFm8T1BuJuYZzXCC+wWripl1mUFbFSnwPCj9keWjNr4w==" /></div><button class="btn-link js-clone-selector" data-protocol="http" type="submit">HTTPS</button></form>, <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/users/set_protocol?protocol_selector=ssh&amp;protocol_type=push" class="inline-form js-clone-selector-form is-enabled" data-form-nonce="f2877793d23dc2200526548cadba0edd12d32142" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="w5d0pxXT/yhuEv+6dsdgJ9Tlp0iHuCHJYnipDWwyu8DTfys5rFkw3gKjRkURv90GBHKLklsTsJizdSa2fz1smA==" /></div><button class="btn-link js-clone-selector" data-protocol="ssh" type="submit">SSH</button></form>, or <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/users/set_protocol?protocol_selector=subversion&amp;protocol_type=push" class="inline-form js-clone-selector-form is-enabled" data-form-nonce="f2877793d23dc2200526548cadba0edd12d32142" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="EQj0DhuaxXbTu9NJhUTE3VheEGoSKDrKwkawtKvZvbEhRAItI06anLGTEAh9ZUEofwvVNuxRwb4iXq/pEz57KA==" /></div><button class="btn-link js-clone-selector" data-protocol="subversion" type="submit">Subversion</button></form>.
  <a href="https://help.github.com/articles/which-remote-url-should-i-use" class="help tooltipped tooltipped-n" aria-label="Get help on which URL is right for you.">
    <span class="octicon octicon-question"></span>
  </a>
</div>
  <a href="github-windows://openRepo/https://github.com/Joe-Hilgard/Anderson-meta" class="btn btn-sm sidebar-button" title="Save Joe-Hilgard/Anderson-meta to your computer and use it in GitHub Desktop." aria-label="Save Joe-Hilgard/Anderson-meta to your computer and use it in GitHub Desktop.">
    <span class="octicon octicon-desktop-download"></span>
    Clone in Desktop
  </a>

              <a href="/Joe-Hilgard/Anderson-meta/archive/1f60972de1837324a0e56583ad0fcec111694adb.zip"
                 class="btn btn-sm sidebar-button"
                 aria-label="Download the contents of Joe-Hilgard/Anderson-meta as a zip file"
                 title="Download the contents of Joe-Hilgard/Anderson-meta as a zip file"
                 rel="nofollow">
                <span class="octicon octicon-cloud-download"></span>
                Download ZIP
              </a>
            </div>
        </div>
        <div id="js-repo-pjax-container" class="repository-content context-loader-container" data-pjax-container>

          

<a href="/Joe-Hilgard/Anderson-meta/blob/1f60972de1837324a0e56583ad0fcec111694adb/GM_fixing_datapoints.R" class="hidden js-permalink-shortcut" data-hotkey="y">Permalink</a>

<!-- blob contrib key: blob_contributors:v21:67887a8ccbd2bccdcf3ea57e0edd5074 -->

  <div class="file-navigation js-zeroclipboard-container">
    
<div class="select-menu js-menu-container js-select-menu left">
  <button class="btn btn-sm select-menu-button js-menu-target css-truncate" data-hotkey="w"
    title=""
    type="button" aria-label="Switch branches or tags" tabindex="0" aria-haspopup="true">
    <i>Tree:</i>
    <span class="js-select-button css-truncate-target">1f60972de1</span>
  </button>

  <div class="select-menu-modal-holder js-menu-content js-navigation-container" data-pjax aria-hidden="true">

    <div class="select-menu-modal">
      <div class="select-menu-header">
        <span class="select-menu-title">Switch branches/tags</span>
        <span class="octicon octicon-x js-menu-close" role="button" aria-label="Close"></span>
      </div>

      <div class="select-menu-filters">
        <div class="select-menu-text-filter">
          <input type="text" aria-label="Find or create a branch…" id="context-commitish-filter-field" class="js-filterable-field js-navigation-enable" placeholder="Find or create a branch…">
        </div>
        <div class="select-menu-tabs">
          <ul>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="branches" data-filter-placeholder="Find or create a branch…" class="js-select-menu-tab" role="tab">Branches</a>
            </li>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="tags" data-filter-placeholder="Find a tag…" class="js-select-menu-tab" role="tab">Tags</a>
            </li>
          </ul>
        </div>
      </div>

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="branches" role="menu">

        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/Joe-Hilgard/Anderson-meta/blob/master/GM_fixing_datapoints.R"
               data-name="master"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="master">
                master
              </span>
            </a>
        </div>

          <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/Joe-Hilgard/Anderson-meta/branches" class="js-create-branch select-menu-item select-menu-new-item-form js-navigation-item js-new-item-form" data-form-nonce="f2877793d23dc2200526548cadba0edd12d32142" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="NHqav/3BzG1HChUA6H4wkmUk/cIcsQ9dAT4Rsdo1WQ9saDPnFQyMX7eLdpKZzh0r6aq5JD5rrZCF3XTw56plPA==" /></div>
            <span class="octicon octicon-git-branch select-menu-item-icon"></span>
            <div class="select-menu-item-text">
              <span class="select-menu-item-heading">Create branch: <span class="js-new-item-name"></span></span>
              <span class="description">from ‘1f60972’</span>
            </div>
            <input type="hidden" name="name" id="name" class="js-new-item-value">
            <input type="hidden" name="branch" id="branch" value="1f60972de1837324a0e56583ad0fcec111694adb">
            <input type="hidden" name="path" id="path" value="GM_fixing_datapoints.R">
</form>
      </div>

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="tags">
        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


        </div>

        <div class="select-menu-no-results">Nothing to show</div>
      </div>

    </div>
  </div>
</div>

    <div class="btn-group right">
      <a href="/Joe-Hilgard/Anderson-meta/find/1f60972de1837324a0e56583ad0fcec111694adb"
            class="js-show-file-finder btn btn-sm empty-icon tooltipped tooltipped-nw"
            data-pjax
            data-hotkey="t"
            aria-label="Quickly jump between files">
        <span class="octicon octicon-list-unordered"></span>
      </a>
      <button aria-label="Copy file path to clipboard" class="js-zeroclipboard btn btn-sm zeroclipboard-button tooltipped tooltipped-s" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </div>

    <div class="breadcrumb js-zeroclipboard-target">
      <span class="repo-root js-repo-root"><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/Joe-Hilgard/Anderson-meta/tree/1f60972de1837324a0e56583ad0fcec111694adb" class="" data-branch="1f60972de1837324a0e56583ad0fcec111694adb" data-pjax="true" itemscope="url" rel="nofollow"><span itemprop="title">Anderson-meta</span></a></span></span><span class="separator">/</span><strong class="final-path">GM_fixing_datapoints.R</strong>
    </div>
  </div>

<include-fragment class="commit-tease" src="/Joe-Hilgard/Anderson-meta/contributors/1f60972de1837324a0e56583ad0fcec111694adb/GM_fixing_datapoints.R">
  <div>
    Fetching contributors&hellip;
  </div>

  <div class="commit-tease-contributors">
    <img alt="" class="loader-loading left" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32-EAF2F5.gif" width="16" />
    <span class="loader-error">Cannot retrieve contributors at this time</span>
  </div>
</include-fragment>
<div class="file">
  <div class="file-header">
  <div class="file-actions">

    <div class="btn-group">
      <a href="/Joe-Hilgard/Anderson-meta/raw/1f60972de1837324a0e56583ad0fcec111694adb/GM_fixing_datapoints.R" class="btn btn-sm " id="raw-url">Raw</a>
        <a href="/Joe-Hilgard/Anderson-meta/blame/1f60972de1837324a0e56583ad0fcec111694adb/GM_fixing_datapoints.R" class="btn btn-sm js-update-url-with-hash">Blame</a>
      <a href="/Joe-Hilgard/Anderson-meta/commits/1f60972de1837324a0e56583ad0fcec111694adb/GM_fixing_datapoints.R" class="btn btn-sm " rel="nofollow">History</a>
    </div>


        <button type="button" class="octicon-btn disabled tooltipped tooltipped-nw"
          aria-label="You must be on a branch to make or propose changes to this file">
          <span class="octicon octicon-pencil"></span>
        </button>
        <button type="button" class="octicon-btn octicon-btn-danger disabled tooltipped tooltipped-nw"
          aria-label="You must be on a branch to make or propose changes to this file">
          <span class="octicon octicon-trashcan"></span>
        </button>
  </div>

  <div class="file-info">
      126 lines (106 sloc)
      <span class="file-info-divider"></span>
    5.44 KB
  </div>
</div>

  

  <div class="blob-wrapper data type-r">
      <table class="highlight tab-size js-file-line-container" data-tab-size="8">
      <tr>
        <td id="L1" class="blob-num js-line-number" data-line-number="1"></td>
        <td id="LC1" class="blob-code blob-code-inner js-file-line">source(<span class="pl-s"><span class="pl-pds">&quot;</span>table_managing_functions.R<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L2" class="blob-num js-line-number" data-line-number="2"></td>
        <td id="LC2" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L3" class="blob-num js-line-number" data-line-number="3"></td>
        <td id="LC3" class="blob-code blob-code-inner js-file-line"><span class="pl-v">dat</span> <span class="pl-k">=</span> read.delim(<span class="pl-s"><span class="pl-pds">&quot;</span>GM_2014_averaged_summed.txt<span class="pl-pds">&quot;</span></span>, <span class="pl-v">stringsAsFactors</span><span class="pl-k">=</span><span class="pl-c1">F</span>)</td>
      </tr>
      <tr>
        <td id="L4" class="blob-num js-line-number" data-line-number="4"></td>
        <td id="LC4" class="blob-code blob-code-inner js-file-line"><span class="pl-v">dat.old</span> <span class="pl-k">=</span> read.delim(<span class="pl-s"><span class="pl-pds">&quot;</span>GM2014_full_raw_data.txt<span class="pl-pds">&quot;</span></span>, <span class="pl-v">stringsAsFactors</span><span class="pl-k">=</span><span class="pl-c1">F</span>)</td>
      </tr>
      <tr>
        <td id="L5" class="blob-num js-line-number" data-line-number="5"></td>
        <td id="LC5" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># Fix dat.old formatting</span></td>
      </tr>
      <tr>
        <td id="L6" class="blob-num js-line-number" data-line-number="6"></td>
        <td id="LC6" class="blob-code blob-code-inner js-file-line">names(<span class="pl-smi">dat.old</span>)[c(<span class="pl-c1">1</span>,<span class="pl-c1">8</span>,<span class="pl-c1">10</span>)] <span class="pl-k">=</span> c(<span class="pl-s"><span class="pl-pds">&quot;</span>ID<span class="pl-pds">&quot;</span></span>, <span class="pl-s"><span class="pl-pds">&quot;</span>Std.Err.r<span class="pl-pds">&quot;</span></span>, <span class="pl-s"><span class="pl-pds">&quot;</span>Std.Err<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L7" class="blob-num js-line-number" data-line-number="7"></td>
        <td id="LC7" class="blob-code blob-code-inner js-file-line"><span class="pl-v">dat.old</span> <span class="pl-k">=</span> <span class="pl-smi">dat.old</span>[,c(<span class="pl-c1">2</span><span class="pl-k">:</span><span class="pl-c1">16</span>, <span class="pl-c1">1</span>)]</td>
      </tr>
      <tr>
        <td id="L8" class="blob-num js-line-number" data-line-number="8"></td>
        <td id="LC8" class="blob-code blob-code-inner js-file-line"><span class="pl-smi">dat.old</span><span class="pl-k">$</span><span class="pl-v">StudyShort</span> <span class="pl-k">=</span> <span class="pl-c1">NA</span>; <span class="pl-smi">dat.old</span><span class="pl-k">$</span><span class="pl-v">Sample.size</span> <span class="pl-k">=</span> <span class="pl-c1">NA</span> </td>
      </tr>
      <tr>
        <td id="L9" class="blob-num js-line-number" data-line-number="9"></td>
        <td id="LC9" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L10" class="blob-num js-line-number" data-line-number="10"></td>
        <td id="LC10" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># Issues to fix:</span></td>
      </tr>
      <tr>
        <td id="L11" class="blob-num js-line-number" data-line-number="11"></td>
        <td id="LC11" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L12" class="blob-num js-line-number" data-line-number="12"></td>
        <td id="LC12" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># Longitudinal study erroneously entered as experimental</span></td>
      </tr>
      <tr>
        <td id="L13" class="blob-num js-line-number" data-line-number="13"></td>
        <td id="LC13" class="blob-code blob-code-inner js-file-line">  <span class="pl-c"># ID: 10, von Salisch, M., Vogelgesang, J., Kristen, A., &amp; Oppl, C. (2011).</span></td>
      </tr>
      <tr>
        <td id="L14" class="blob-num js-line-number" data-line-number="14"></td>
        <td id="LC14" class="blob-code blob-code-inner js-file-line"><span class="pl-smi">dat</span><span class="pl-k">$</span><span class="pl-smi">study.design</span>[<span class="pl-smi">dat</span><span class="pl-k">$</span><span class="pl-smi">ID</span> <span class="pl-k">==</span> <span class="pl-c1">10</span>] <span class="pl-k">=</span> <span class="pl-s"><span class="pl-pds">&quot;</span>experimental<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L15" class="blob-num js-line-number" data-line-number="15"></td>
        <td id="LC15" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L16" class="blob-num js-line-number" data-line-number="16"></td>
        <td id="LC16" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># Complex contrasts counted control group 2x, 3x, even 4x.</span></td>
      </tr>
      <tr>
        <td id="L17" class="blob-num js-line-number" data-line-number="17"></td>
        <td id="LC17" class="blob-code blob-code-inner js-file-line">  <span class="pl-c"># ID: 83/84/86/87/89/90/92/93, Krcmar, M. &amp; Lachlan, K. (2009).</span></td>
      </tr>
      <tr>
        <td id="L18" class="blob-num js-line-number" data-line-number="18"></td>
        <td id="LC18" class="blob-code blob-code-inner js-file-line"><span class="pl-c">## Replacing with complex contrasts (ctrl vs. all others)</span></td>
      </tr>
      <tr>
        <td id="L19" class="blob-num js-line-number" data-line-number="19"></td>
        <td id="LC19" class="blob-code blob-code-inner js-file-line"><span class="pl-v">weights.KL</span> <span class="pl-k">=</span> c(<span class="pl-k">-</span><span class="pl-c1">1</span>, rep(<span class="pl-c1">1</span><span class="pl-k">/</span><span class="pl-c1">4</span>, <span class="pl-c1">4</span>))</td>
      </tr>
      <tr>
        <td id="L20" class="blob-num js-line-number" data-line-number="20"></td>
        <td id="LC20" class="blob-code blob-code-inner js-file-line"><span class="pl-v">ns.KL</span> <span class="pl-k">=</span> c(<span class="pl-c1">21</span>, <span class="pl-c1">36</span>, <span class="pl-c1">38</span>, <span class="pl-c1">41</span>, <span class="pl-c1">37</span>)</td>
      </tr>
      <tr>
        <td id="L21" class="blob-num js-line-number" data-line-number="21"></td>
        <td id="LC21" class="blob-code blob-code-inner js-file-line"><span class="pl-v">physAgg.sd.KL</span> <span class="pl-k">=</span> c(.<span class="pl-c1">98</span>, <span class="pl-c1">1.08</span>, <span class="pl-c1">1.35</span>, <span class="pl-c1">1.18</span>, <span class="pl-c1">1.05</span>)</td>
      </tr>
      <tr>
        <td id="L22" class="blob-num js-line-number" data-line-number="22"></td>
        <td id="LC22" class="blob-code blob-code-inner js-file-line"><span class="pl-v">verbAgg.sd.KL</span> <span class="pl-k">=</span> c(<span class="pl-c1">1.46</span>, <span class="pl-c1">1.52</span>, <span class="pl-c1">1.44</span>, <span class="pl-c1">1.41</span>, <span class="pl-c1">1.35</span>)</td>
      </tr>
      <tr>
        <td id="L23" class="blob-num js-line-number" data-line-number="23"></td>
        <td id="LC23" class="blob-code blob-code-inner js-file-line"><span class="pl-v">arousal.sd.KL</span> <span class="pl-k">=</span> c(.<span class="pl-c1">69</span>, .<span class="pl-c1">92</span>, <span class="pl-c1">1.19</span>, <span class="pl-c1">1.23</span>, <span class="pl-c1">1.22</span>)</td>
      </tr>
      <tr>
        <td id="L24" class="blob-num js-line-number" data-line-number="24"></td>
        <td id="LC24" class="blob-code blob-code-inner js-file-line"><span class="pl-v">physAgg.means.KL</span> <span class="pl-k">=</span> c(<span class="pl-c1">1.56</span>, <span class="pl-c1">2.16</span>, <span class="pl-c1">2.72</span>, <span class="pl-c1">2.06</span>, <span class="pl-c1">1.84</span>)</td>
      </tr>
      <tr>
        <td id="L25" class="blob-num js-line-number" data-line-number="25"></td>
        <td id="LC25" class="blob-code blob-code-inner js-file-line"><span class="pl-v">verbAgg.means.KL</span> <span class="pl-k">=</span> c(<span class="pl-c1">1.75</span>, <span class="pl-c1">2.74</span>, <span class="pl-c1">2.74</span>, <span class="pl-c1">2.44</span>, <span class="pl-c1">2.20</span>)</td>
      </tr>
      <tr>
        <td id="L26" class="blob-num js-line-number" data-line-number="26"></td>
        <td id="LC26" class="blob-code blob-code-inner js-file-line"><span class="pl-v">arousal.means.KL</span> <span class="pl-k">=</span> c(<span class="pl-c1">2.95</span>, <span class="pl-c1">4.97</span>, <span class="pl-c1">4.59</span>, <span class="pl-c1">3.97</span>, <span class="pl-c1">3.55</span>)</td>
      </tr>
      <tr>
        <td id="L27" class="blob-num js-line-number" data-line-number="27"></td>
        <td id="LC27" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># get effect sizes d</span></td>
      </tr>
      <tr>
        <td id="L28" class="blob-num js-line-number" data-line-number="28"></td>
        <td id="LC28" class="blob-code blob-code-inner js-file-line"><span class="pl-v">physAgg.d.KL</span> <span class="pl-k">=</span> contrast.d(<span class="pl-v">weights</span><span class="pl-k">=</span><span class="pl-smi">weights.KL</span>,</td>
      </tr>
      <tr>
        <td id="L29" class="blob-num js-line-number" data-line-number="29"></td>
        <td id="LC29" class="blob-code blob-code-inner js-file-line">                          <span class="pl-v">means</span> <span class="pl-k">=</span> <span class="pl-smi">physAgg.means.KL</span>,</td>
      </tr>
      <tr>
        <td id="L30" class="blob-num js-line-number" data-line-number="30"></td>
        <td id="LC30" class="blob-code blob-code-inner js-file-line">                          <span class="pl-v">sds</span> <span class="pl-k">=</span> <span class="pl-smi">physAgg.sd.KL</span>,                          </td>
      </tr>
      <tr>
        <td id="L31" class="blob-num js-line-number" data-line-number="31"></td>
        <td id="LC31" class="blob-code blob-code-inner js-file-line">                          <span class="pl-v">ns</span> <span class="pl-k">=</span> <span class="pl-smi">ns.KL</span></td>
      </tr>
      <tr>
        <td id="L32" class="blob-num js-line-number" data-line-number="32"></td>
        <td id="LC32" class="blob-code blob-code-inner js-file-line">)</td>
      </tr>
      <tr>
        <td id="L33" class="blob-num js-line-number" data-line-number="33"></td>
        <td id="LC33" class="blob-code blob-code-inner js-file-line"><span class="pl-v">verbAgg.d.KL</span> <span class="pl-k">=</span> contrast.d(<span class="pl-v">weights</span><span class="pl-k">=</span><span class="pl-smi">weights.KL</span>,</td>
      </tr>
      <tr>
        <td id="L34" class="blob-num js-line-number" data-line-number="34"></td>
        <td id="LC34" class="blob-code blob-code-inner js-file-line">                          <span class="pl-v">means</span> <span class="pl-k">=</span> <span class="pl-smi">verbAgg.means.KL</span>,</td>
      </tr>
      <tr>
        <td id="L35" class="blob-num js-line-number" data-line-number="35"></td>
        <td id="LC35" class="blob-code blob-code-inner js-file-line">                          <span class="pl-v">sds</span> <span class="pl-k">=</span> <span class="pl-smi">verbAgg.sd.KL</span>,                          </td>
      </tr>
      <tr>
        <td id="L36" class="blob-num js-line-number" data-line-number="36"></td>
        <td id="LC36" class="blob-code blob-code-inner js-file-line">                          <span class="pl-v">ns</span> <span class="pl-k">=</span> <span class="pl-smi">ns.KL</span></td>
      </tr>
      <tr>
        <td id="L37" class="blob-num js-line-number" data-line-number="37"></td>
        <td id="LC37" class="blob-code blob-code-inner js-file-line">)</td>
      </tr>
      <tr>
        <td id="L38" class="blob-num js-line-number" data-line-number="38"></td>
        <td id="LC38" class="blob-code blob-code-inner js-file-line"><span class="pl-v">arousal.d.KL</span> <span class="pl-k">=</span> contrast.d(<span class="pl-v">weights</span><span class="pl-k">=</span><span class="pl-smi">weights.KL</span>,</td>
      </tr>
      <tr>
        <td id="L39" class="blob-num js-line-number" data-line-number="39"></td>
        <td id="LC39" class="blob-code blob-code-inner js-file-line">                          <span class="pl-v">means</span> <span class="pl-k">=</span> <span class="pl-smi">arousal.means.KL</span>,</td>
      </tr>
      <tr>
        <td id="L40" class="blob-num js-line-number" data-line-number="40"></td>
        <td id="LC40" class="blob-code blob-code-inner js-file-line">                          <span class="pl-v">sds</span> <span class="pl-k">=</span> <span class="pl-smi">arousal.sd.KL</span>,                          </td>
      </tr>
      <tr>
        <td id="L41" class="blob-num js-line-number" data-line-number="41"></td>
        <td id="LC41" class="blob-code blob-code-inner js-file-line">                          <span class="pl-v">ns</span> <span class="pl-k">=</span> <span class="pl-smi">ns.KL</span></td>
      </tr>
      <tr>
        <td id="L42" class="blob-num js-line-number" data-line-number="42"></td>
        <td id="LC42" class="blob-code blob-code-inner js-file-line">)</td>
      </tr>
      <tr>
        <td id="L43" class="blob-num js-line-number" data-line-number="43"></td>
        <td id="LC43" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># convert d to Fisher&#39;s z</span></td>
      </tr>
      <tr>
        <td id="L44" class="blob-num js-line-number" data-line-number="44"></td>
        <td id="LC44" class="blob-code blob-code-inner js-file-line"><span class="pl-v">physAgg.z</span> <span class="pl-k">=</span> d2r2z(<span class="pl-smi">physAgg.d.KL</span>, <span class="pl-smi">ns.KL</span>[<span class="pl-c1">1</span>], sum(<span class="pl-smi">ns.KL</span>[<span class="pl-c1">2</span><span class="pl-k">:</span><span class="pl-c1">5</span>]))</td>
      </tr>
      <tr>
        <td id="L45" class="blob-num js-line-number" data-line-number="45"></td>
        <td id="LC45" class="blob-code blob-code-inner js-file-line"><span class="pl-v">verbAgg.z</span> <span class="pl-k">=</span> d2r2z(<span class="pl-smi">verbAgg.d.KL</span>, <span class="pl-smi">ns.KL</span>[<span class="pl-c1">1</span>], sum(<span class="pl-smi">ns.KL</span>[<span class="pl-c1">2</span><span class="pl-k">:</span><span class="pl-c1">5</span>]))</td>
      </tr>
      <tr>
        <td id="L46" class="blob-num js-line-number" data-line-number="46"></td>
        <td id="LC46" class="blob-code blob-code-inner js-file-line"><span class="pl-v">arousal.z</span> <span class="pl-k">=</span> d2r2z(<span class="pl-smi">arousal.d.KL</span>, <span class="pl-smi">ns.KL</span>[<span class="pl-c1">1</span>], sum(<span class="pl-smi">ns.KL</span>[<span class="pl-c1">2</span><span class="pl-k">:</span><span class="pl-c1">5</span>]))</td>
      </tr>
      <tr>
        <td id="L47" class="blob-num js-line-number" data-line-number="47"></td>
        <td id="LC47" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># Now aggregate phys and verb aggression</span></td>
      </tr>
      <tr>
        <td id="L48" class="blob-num js-line-number" data-line-number="48"></td>
        <td id="LC48" class="blob-code blob-code-inner js-file-line"><span class="pl-v">agg.z</span> <span class="pl-k">=</span> weighted.mean(<span class="pl-v">x</span> <span class="pl-k">=</span> c(<span class="pl-smi">physAgg.z</span><span class="pl-k">$</span><span class="pl-smi">Z</span>, <span class="pl-smi">verbAgg.z</span><span class="pl-k">$</span><span class="pl-smi">Z</span>),</td>
      </tr>
      <tr>
        <td id="L49" class="blob-num js-line-number" data-line-number="49"></td>
        <td id="LC49" class="blob-code blob-code-inner js-file-line">                      <span class="pl-v">w</span> <span class="pl-k">=</span> c(<span class="pl-c1">1</span><span class="pl-k">/</span><span class="pl-smi">physAgg.z</span><span class="pl-k">$</span><span class="pl-smi">StdErr.z</span>, <span class="pl-c1">1</span><span class="pl-k">/</span><span class="pl-smi">verbAgg.z</span><span class="pl-k">$</span><span class="pl-smi">StdErr.z</span>)</td>
      </tr>
      <tr>
        <td id="L50" class="blob-num js-line-number" data-line-number="50"></td>
        <td id="LC50" class="blob-code blob-code-inner js-file-line">)</td>
      </tr>
      <tr>
        <td id="L51" class="blob-num js-line-number" data-line-number="51"></td>
        <td id="LC51" class="blob-code blob-code-inner js-file-line"><span class="pl-v">agg.StdErr</span> <span class="pl-k">=</span> mean(c(<span class="pl-smi">physAgg.z</span><span class="pl-k">$</span><span class="pl-smi">StdErr.z</span>, <span class="pl-smi">verbAgg.z</span><span class="pl-k">$</span><span class="pl-smi">StdErr.z</span>))</td>
      </tr>
      <tr>
        <td id="L52" class="blob-num js-line-number" data-line-number="52"></td>
        <td id="LC52" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># Enter correct values</span></td>
      </tr>
      <tr>
        <td id="L53" class="blob-num js-line-number" data-line-number="53"></td>
        <td id="LC53" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># aggression:</span></td>
      </tr>
      <tr>
        <td id="L54" class="blob-num js-line-number" data-line-number="54"></td>
        <td id="LC54" class="blob-code blob-code-inner js-file-line"><span class="pl-smi">dat</span><span class="pl-k">$</span><span class="pl-smi">Fisher.s.Z</span>[<span class="pl-smi">dat</span><span class="pl-k">$</span><span class="pl-smi">ID</span> <span class="pl-k">%in%</span> <span class="pl-s"><span class="pl-pds">&quot;</span>83/84/86/87/89/90/92/93<span class="pl-pds">&quot;</span></span>] <span class="pl-k">=</span> <span class="pl-smi">agg.z</span></td>
      </tr>
      <tr>
        <td id="L55" class="blob-num js-line-number" data-line-number="55"></td>
        <td id="LC55" class="blob-code blob-code-inner js-file-line"><span class="pl-smi">dat</span><span class="pl-k">$</span><span class="pl-smi">Std.Err</span>[<span class="pl-smi">dat</span><span class="pl-k">$</span><span class="pl-smi">ID</span> <span class="pl-k">%in%</span> <span class="pl-s"><span class="pl-pds">&quot;</span>83/84/86/87/89/90/92/93<span class="pl-pds">&quot;</span></span>] <span class="pl-k">=</span> <span class="pl-smi">agg.StdErr</span></td>
      </tr>
      <tr>
        <td id="L56" class="blob-num js-line-number" data-line-number="56"></td>
        <td id="LC56" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># arousal:</span></td>
      </tr>
      <tr>
        <td id="L57" class="blob-num js-line-number" data-line-number="57"></td>
        <td id="LC57" class="blob-code blob-code-inner js-file-line"><span class="pl-smi">dat</span><span class="pl-k">$</span><span class="pl-smi">Fisher.s.Z</span>[<span class="pl-smi">dat</span><span class="pl-k">$</span><span class="pl-smi">ID</span> <span class="pl-k">%in%</span> <span class="pl-s"><span class="pl-pds">&quot;</span>82/85/88/91<span class="pl-pds">&quot;</span></span>] <span class="pl-k">=</span> <span class="pl-smi">arousal.z</span><span class="pl-k">$</span><span class="pl-smi">Z</span></td>
      </tr>
      <tr>
        <td id="L58" class="blob-num js-line-number" data-line-number="58"></td>
        <td id="LC58" class="blob-code blob-code-inner js-file-line"><span class="pl-smi">dat</span><span class="pl-k">$</span><span class="pl-smi">Fisher.s.Z</span>[<span class="pl-smi">dat</span><span class="pl-k">$</span><span class="pl-smi">ID</span> <span class="pl-k">%in%</span> <span class="pl-s"><span class="pl-pds">&quot;</span>82/85/88/91<span class="pl-pds">&quot;</span></span>] <span class="pl-k">=</span> <span class="pl-smi">arousal.z</span><span class="pl-k">$</span><span class="pl-smi">StdErr.z</span></td>
      </tr>
      <tr>
        <td id="L59" class="blob-num js-line-number" data-line-number="59"></td>
        <td id="LC59" class="blob-code blob-code-inner js-file-line">  <span class="pl-c"># ID: 225/226/227, Ewoldsen, D. R. et al. (2011)</span></td>
      </tr>
      <tr>
        <td id="L60" class="blob-num js-line-number" data-line-number="60"></td>
        <td id="LC60" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L61" class="blob-num js-line-number" data-line-number="61"></td>
        <td id="LC61" class="blob-code blob-code-inner js-file-line">  <span class="pl-c"># ID: 11/12/13/14/15/16, Valadez, J. J., &amp; Ferguson, C. J. (2012).</span></td>
      </tr>
      <tr>
        <td id="L62" class="blob-num js-line-number" data-line-number="62"></td>
        <td id="LC62" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L63" class="blob-num js-line-number" data-line-number="63"></td>
        <td id="LC63" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># &quot;Humanization&quot; of ingroup and outgroup used as independent subgroups</span></td>
      </tr>
      <tr>
        <td id="L64" class="blob-num js-line-number" data-line-number="64"></td>
        <td id="LC64" class="blob-code blob-code-inner js-file-line">  <span class="pl-c"># Authors had reported (within-subjects) difference score as relevant effect.</span></td>
      </tr>
      <tr>
        <td id="L65" class="blob-num js-line-number" data-line-number="65"></td>
        <td id="LC65" class="blob-code blob-code-inner js-file-line">  <span class="pl-c"># Unique contrasts are entered for violent vs neutral (antisocial game),</span></td>
      </tr>
      <tr>
        <td id="L66" class="blob-num js-line-number" data-line-number="66"></td>
        <td id="LC66" class="blob-code blob-code-inner js-file-line">    <span class="pl-c"># violent vs prosocial (left blank), and prosocial vs neutral (prosocial game)</span></td>
      </tr>
      <tr>
        <td id="L67" class="blob-num js-line-number" data-line-number="67"></td>
        <td id="LC67" class="blob-code blob-code-inner js-file-line">  <span class="pl-c"># ID: 140/141, Greitemeyer &amp; McLatchie (2011)</span></td>
      </tr>
      <tr>
        <td id="L68" class="blob-num js-line-number" data-line-number="68"></td>
        <td id="LC68" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L69" class="blob-num js-line-number" data-line-number="69"></td>
        <td id="LC69" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># Sestir and Bartholow (2010) subsample given precision of full group</span></td>
      </tr>
      <tr>
        <td id="L70" class="blob-num js-line-number" data-line-number="70"></td>
        <td id="LC70" class="blob-code blob-code-inner js-file-line">  <span class="pl-c"># ID: 24, Sestir, M. A., &amp; Bartholow, B. D. (2010).</span></td>
      </tr>
      <tr>
        <td id="L71" class="blob-num js-line-number" data-line-number="71"></td>
        <td id="LC71" class="blob-code blob-code-inner js-file-line"><span class="pl-smi">dat</span><span class="pl-k">$</span><span class="pl-smi">Std.Err</span>[<span class="pl-smi">dat</span><span class="pl-k">$</span><span class="pl-smi">ID</span> <span class="pl-k">==</span> <span class="pl-c1">24</span>] <span class="pl-k">=</span> <span class="pl-c1">1</span><span class="pl-k">/</span>sqrt((<span class="pl-c1">347</span><span class="pl-k">/</span><span class="pl-c1">3</span>)<span class="pl-k">-</span><span class="pl-c1">3</span>) <span class="pl-c">#THIS IS AN APPROXIMATION</span></td>
      </tr>
      <tr>
        <td id="L72" class="blob-num js-line-number" data-line-number="72"></td>
        <td id="LC72" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># I DON&#39;T KNOW THE ACTUAL SAMPLE SIZE AND THIS EQUATION IS A ROUGH APPROXIMATION</span></td>
      </tr>
      <tr>
        <td id="L73" class="blob-num js-line-number" data-line-number="73"></td>
        <td id="LC73" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># Total sample N was 347 and this is 1/3rd of that (discarding 15-min and ctrl group)</span></td>
      </tr>
      <tr>
        <td id="L74" class="blob-num js-line-number" data-line-number="74"></td>
        <td id="LC74" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># I might suggest alternatively including the entire sample</span></td>
      </tr>
      <tr>
        <td id="L75" class="blob-num js-line-number" data-line-number="75"></td>
        <td id="LC75" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L76" class="blob-num js-line-number" data-line-number="76"></td>
        <td id="LC76" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># Raising an eyebrow at Barlett subgroup &quot;45 min (T4)&quot;</span></td>
      </tr>
      <tr>
        <td id="L77" class="blob-num js-line-number" data-line-number="77"></td>
        <td id="LC77" class="blob-code blob-code-inner js-file-line">  <span class="pl-c"># This suggests that there might be other effect sizes that should&#39;ve been</span></td>
      </tr>
      <tr>
        <td id="L78" class="blob-num js-line-number" data-line-number="78"></td>
        <td id="LC78" class="blob-code blob-code-inner js-file-line">    <span class="pl-c"># aggregated together</span></td>
      </tr>
      <tr>
        <td id="L79" class="blob-num js-line-number" data-line-number="79"></td>
        <td id="LC79" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L80" class="blob-num js-line-number" data-line-number="80"></td>
        <td id="LC80" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># &quot;Ferguson&quot; code column errors:</span></td>
      </tr>
      <tr>
        <td id="L81" class="blob-num js-line-number" data-line-number="81"></td>
        <td id="LC81" class="blob-code blob-code-inner js-file-line">  <span class="pl-c"># ID: 231/232, Engelhardt, C. R., Bartholow, B. D., &amp; Saults, S. (2011). coded as 2</span></td>
      </tr>
      <tr>
        <td id="L82" class="blob-num js-line-number" data-line-number="82"></td>
        <td id="LC82" class="blob-code blob-code-inner js-file-line">    <span class="pl-c"># But no anderson/bushman co-author (not directly at least)</span></td>
      </tr>
      <tr>
        <td id="L83" class="blob-num js-line-number" data-line-number="83"></td>
        <td id="LC83" class="blob-code blob-code-inner js-file-line"><span class="pl-smi">dat</span><span class="pl-k">$</span><span class="pl-smi">Ferguson</span>[<span class="pl-smi">dat</span><span class="pl-k">$</span><span class="pl-smi">ID</span> <span class="pl-k">==</span> <span class="pl-s"><span class="pl-pds">&quot;</span>231/232<span class="pl-pds">&quot;</span></span>] <span class="pl-k">=</span> <span class="pl-c1">3</span></td>
      </tr>
      <tr>
        <td id="L84" class="blob-num js-line-number" data-line-number="84"></td>
        <td id="LC84" class="blob-code blob-code-inner js-file-line">  <span class="pl-c"># ID: 119, Jerabeck, J. M., Ferguson, C. J. (2013). coded as 2</span></td>
      </tr>
      <tr>
        <td id="L85" class="blob-num js-line-number" data-line-number="85"></td>
        <td id="LC85" class="blob-code blob-code-inner js-file-line">    <span class="pl-c"># Should be 1, these are Ferguson, not Anderson/Bushman</span></td>
      </tr>
      <tr>
        <td id="L86" class="blob-num js-line-number" data-line-number="86"></td>
        <td id="LC86" class="blob-code blob-code-inner js-file-line"><span class="pl-smi">dat</span><span class="pl-k">$</span><span class="pl-smi">Ferguson</span>[<span class="pl-smi">dat</span><span class="pl-k">$</span><span class="pl-smi">ID</span> <span class="pl-k">==</span> <span class="pl-c1">119</span>] <span class="pl-k">=</span> <span class="pl-c1">1</span></td>
      </tr>
      <tr>
        <td id="L87" class="blob-num js-line-number" data-line-number="87"></td>
        <td id="LC87" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L88" class="blob-num js-line-number" data-line-number="88"></td>
        <td id="LC88" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># ID: 260/261, Anderson &amp; Carnagey S3 treated dependent measures as independent</span></td>
      </tr>
      <tr>
        <td id="L89" class="blob-num js-line-number" data-line-number="89"></td>
        <td id="LC89" class="blob-code blob-code-inner js-file-line">  <span class="pl-c"># &quot;High intensity aggression&quot; and &quot;average intensity aggression&quot;</span></td>
      </tr>
      <tr>
        <td id="L90" class="blob-num js-line-number" data-line-number="90"></td>
        <td id="LC90" class="blob-code blob-code-inner js-file-line">  <span class="pl-c"># And one of these was given very wide standard error</span></td>
      </tr>
      <tr>
        <td id="L91" class="blob-num js-line-number" data-line-number="91"></td>
        <td id="LC91" class="blob-code blob-code-inner js-file-line">  <span class="pl-c"># The two mistakes may cancel each other out but should still be fixed</span></td>
      </tr>
      <tr>
        <td id="L92" class="blob-num js-line-number" data-line-number="92"></td>
        <td id="LC92" class="blob-code blob-code-inner js-file-line"><span class="pl-v">meanZ</span> <span class="pl-k">=</span> mean(<span class="pl-smi">dat.old</span><span class="pl-k">$</span><span class="pl-smi">Fisher.s.Z</span>[<span class="pl-smi">dat.old</span><span class="pl-k">$</span><span class="pl-smi">ID</span> <span class="pl-k">%in%</span> c(<span class="pl-c1">260</span>, <span class="pl-c1">261</span>)])</td>
      </tr>
      <tr>
        <td id="L93" class="blob-num js-line-number" data-line-number="93"></td>
        <td id="LC93" class="blob-code blob-code-inner js-file-line"><span class="pl-smi">dat</span><span class="pl-k">$</span><span class="pl-smi">Fisher.s.Z</span>[<span class="pl-smi">dat</span><span class="pl-k">$</span><span class="pl-smi">ID</span> <span class="pl-k">==</span> <span class="pl-s"><span class="pl-pds">&quot;</span>260/261<span class="pl-pds">&quot;</span></span>] <span class="pl-k">=</span> <span class="pl-smi">meanZ</span></td>
      </tr>
      <tr>
        <td id="L94" class="blob-num js-line-number" data-line-number="94"></td>
        <td id="LC94" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># Can&#39;t check what the SE should be right now but can set it to that of avg. int</span></td>
      </tr>
      <tr>
        <td id="L95" class="blob-num js-line-number" data-line-number="95"></td>
        <td id="LC95" class="blob-code blob-code-inner js-file-line"><span class="pl-smi">dat</span><span class="pl-k">$</span><span class="pl-smi">Std.Err</span>[<span class="pl-smi">dat</span><span class="pl-k">$</span><span class="pl-smi">ID</span> <span class="pl-k">==</span> <span class="pl-s"><span class="pl-pds">&quot;</span>260/261<span class="pl-pds">&quot;</span></span>] <span class="pl-k">=</span> <span class="pl-smi">dat.old</span><span class="pl-k">$</span><span class="pl-smi">Std.Err</span>[<span class="pl-smi">dat.old</span><span class="pl-k">$</span><span class="pl-smi">ID</span> <span class="pl-k">%in%</span> <span class="pl-c1">260</span>]</td>
      </tr>
      <tr>
        <td id="L96" class="blob-num js-line-number" data-line-number="96"></td>
        <td id="LC96" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L97" class="blob-num js-line-number" data-line-number="97"></td>
        <td id="LC97" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># Inappropriate effect sizes</span></td>
      </tr>
      <tr>
        <td id="L98" class="blob-num js-line-number" data-line-number="98"></td>
        <td id="LC98" class="blob-code blob-code-inner js-file-line">  <span class="pl-c"># ID: 125/126, Hasan, Y., Bègue, L., &amp; Bushman, B. J. (2012). </span></td>
      </tr>
      <tr>
        <td id="L99" class="blob-num js-line-number" data-line-number="99"></td>
        <td id="LC99" class="blob-code blob-code-inner js-file-line">    <span class="pl-c"># &quot;Hostile Expectation Bias&quot; mediator entered as aggressive behavior</span></td>
      </tr>
      <tr>
        <td id="L100" class="blob-num js-line-number" data-line-number="100"></td>
        <td id="LC100" class="blob-code blob-code-inner js-file-line"><span class="pl-v">dat</span> <span class="pl-k">=</span> <span class="pl-smi">dat</span>[<span class="pl-smi">dat</span><span class="pl-k">$</span><span class="pl-smi">ID</span> <span class="pl-k">!=</span> <span class="pl-s"><span class="pl-pds">&quot;</span>125/126<span class="pl-pds">&quot;</span></span>,] <span class="pl-c"># drop the aggregated row</span></td>
      </tr>
      <tr>
        <td id="L101" class="blob-num js-line-number" data-line-number="101"></td>
        <td id="LC101" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># Bring back in the unaggregated rows</span></td>
      </tr>
      <tr>
        <td id="L102" class="blob-num js-line-number" data-line-number="102"></td>
        <td id="LC102" class="blob-code blob-code-inner js-file-line"><span class="pl-v">dat</span> <span class="pl-k">=</span> rbind(<span class="pl-smi">dat</span>, <span class="pl-smi">dat.old</span>[<span class="pl-smi">dat.old</span><span class="pl-k">$</span><span class="pl-smi">ID</span> <span class="pl-k">%in%</span> c(<span class="pl-c1">125</span>, <span class="pl-c1">126</span>),]) </td>
      </tr>
      <tr>
        <td id="L103" class="blob-num js-line-number" data-line-number="103"></td>
        <td id="LC103" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># Fix &quot;hostile expectation bias&quot; to be cognition, if anything. </span></td>
      </tr>
      <tr>
        <td id="L104" class="blob-num js-line-number" data-line-number="104"></td>
        <td id="LC104" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># Maybe delete, depending on your definition of agg cog &amp; implied intent</span></td>
      </tr>
      <tr>
        <td id="L105" class="blob-num js-line-number" data-line-number="105"></td>
        <td id="LC105" class="blob-code blob-code-inner js-file-line"><span class="pl-smi">dat</span><span class="pl-k">$</span><span class="pl-smi">Outcome.Group</span>[<span class="pl-smi">dat</span><span class="pl-k">$</span><span class="pl-smi">ID</span> <span class="pl-k">==</span> <span class="pl-c1">126</span>] <span class="pl-k">=</span> <span class="pl-s"><span class="pl-pds">&quot;</span>cognition<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L106" class="blob-num js-line-number" data-line-number="106"></td>
        <td id="LC106" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L107" class="blob-num js-line-number" data-line-number="107"></td>
        <td id="LC107" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L108" class="blob-num js-line-number" data-line-number="108"></td>
        <td id="LC108" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L109" class="blob-num js-line-number" data-line-number="109"></td>
        <td id="LC109" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L110" class="blob-num js-line-number" data-line-number="110"></td>
        <td id="LC110" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L111" class="blob-num js-line-number" data-line-number="111"></td>
        <td id="LC111" class="blob-code blob-code-inner js-file-line">write.table(<span class="pl-smi">dat</span>, <span class="pl-v">file</span><span class="pl-k">=</span><span class="pl-s"><span class="pl-pds">&quot;</span>GM_2014_averaged_summed_fixed.txt<span class="pl-pds">&quot;</span></span>, <span class="pl-v">sep</span><span class="pl-k">=</span><span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\t</span><span class="pl-pds">&quot;</span></span>, <span class="pl-v">row.names</span><span class="pl-k">=</span><span class="pl-c1">F</span>)</td>
      </tr>
      <tr>
        <td id="L112" class="blob-num js-line-number" data-line-number="112"></td>
        <td id="LC112" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L113" class="blob-num js-line-number" data-line-number="113"></td>
        <td id="LC113" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L114" class="blob-num js-line-number" data-line-number="114"></td>
        <td id="LC114" class="blob-code blob-code-inner js-file-line"><span class="pl-c">#####</span></td>
      </tr>
      <tr>
        <td id="L115" class="blob-num js-line-number" data-line-number="115"></td>
        <td id="LC115" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># Ewoldsen</span></td>
      </tr>
      <tr>
        <td id="L116" class="blob-num js-line-number" data-line-number="116"></td>
        <td id="LC116" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L117" class="blob-num js-line-number" data-line-number="117"></td>
        <td id="LC117" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L118" class="blob-num js-line-number" data-line-number="118"></td>
        <td id="LC118" class="blob-code blob-code-inner js-file-line"><span class="pl-c">## Jerabeck and Ferguson complex contrast</span></td>
      </tr>
      <tr>
        <td id="L119" class="blob-num js-line-number" data-line-number="119"></td>
        <td id="LC119" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># N = 100 divided somehow evenly across six cells... 16x4 + 18x4?</span></td>
      </tr>
      <tr>
        <td id="L120" class="blob-num js-line-number" data-line-number="120"></td>
        <td id="LC120" class="blob-code blob-code-inner js-file-line"><span class="pl-c">#  dependency within dyads not modeled.</span></td>
      </tr>
      <tr>
        <td id="L121" class="blob-num js-line-number" data-line-number="121"></td>
        <td id="LC121" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># Drops the violent-prosocial condition, so no multiple comparisons here.</span></td>
      </tr>
      <tr>
        <td id="L122" class="blob-num js-line-number" data-line-number="122"></td>
        <td id="LC122" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># &quot;In fact, the means for antisocial video games were</span></td>
      </tr>
      <tr>
        <td id="L123" class="blob-num js-line-number" data-line-number="123"></td>
        <td id="LC123" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># least aggressive (M = 1.87, SD = 0.61) compared to either the prosocial</span></td>
      </tr>
      <tr>
        <td id="L124" class="blob-num js-line-number" data-line-number="124"></td>
        <td id="LC124" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># violent (M = 2.15, SD = 0.89) or non-violent (M = 1.91, SD = 0.90) games. </span></td>
      </tr>
      <tr>
        <td id="L125" class="blob-num js-line-number" data-line-number="125"></td>
        <td id="LC125" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># Neither covariate was statistically significant,</span></td>
      </tr>
      <tr>
        <td id="L126" class="blob-num js-line-number" data-line-number="126"></td>
        <td id="LC126" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># suggesting confounds were not at issue.&quot;</span></td>
      </tr>
</table>

  </div>

</div>

<a href="#jump-to-line" rel="facebox[.linejump]" data-hotkey="l" style="display:none">Jump to Line</a>
<div id="jump-to-line" style="display:none">
  <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="" class="js-jump-to-line-form" method="get"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div>
    <input class="linejump-input js-jump-to-line-field" type="text" placeholder="Jump to line&hellip;" aria-label="Jump to line" autofocus>
    <button type="submit" class="btn">Go</button>
</form></div>

        </div>
      </div>
      <div class="modal-backdrop"></div>
    </div>
  </div>


    </div>

      <div class="container">
  <div class="site-footer" role="contentinfo">
    <ul class="site-footer-links right">
        <li><a href="https://status.github.com/" data-ga-click="Footer, go to status, text:status">Status</a></li>
      <li><a href="https://developer.github.com" data-ga-click="Footer, go to api, text:api">API</a></li>
      <li><a href="https://training.github.com" data-ga-click="Footer, go to training, text:training">Training</a></li>
      <li><a href="https://shop.github.com" data-ga-click="Footer, go to shop, text:shop">Shop</a></li>
        <li><a href="https://github.com/blog" data-ga-click="Footer, go to blog, text:blog">Blog</a></li>
        <li><a href="https://github.com/about" data-ga-click="Footer, go to about, text:about">About</a></li>
        <li><a href="https://github.com/pricing" data-ga-click="Footer, go to pricing, text:pricing">Pricing</a></li>

    </ul>

    <a href="https://github.com" aria-label="Homepage">
      <span class="mega-octicon octicon-mark-github" title="GitHub"></span>
</a>
    <ul class="site-footer-links">
      <li>&copy; 2015 <span title="0.08483s from github-fe122-cp1-prd.iad.github.net">GitHub</span>, Inc.</li>
        <li><a href="https://github.com/site/terms" data-ga-click="Footer, go to terms, text:terms">Terms</a></li>
        <li><a href="https://github.com/site/privacy" data-ga-click="Footer, go to privacy, text:privacy">Privacy</a></li>
        <li><a href="https://github.com/security" data-ga-click="Footer, go to security, text:security">Security</a></li>
        <li><a href="https://github.com/contact" data-ga-click="Footer, go to contact, text:contact">Contact</a></li>
        <li><a href="https://help.github.com" data-ga-click="Footer, go to help, text:help">Help</a></li>
    </ul>
  </div>
</div>



    
    
    

    <div id="ajax-error-message" class="flash flash-error">
      <span class="octicon octicon-alert"></span>
      <button type="button" class="flash-close js-flash-close js-ajax-error-dismiss" aria-label="Dismiss error">
        <span class="octicon octicon-x"></span>
      </button>
      Something went wrong with that request. Please try again.
    </div>


      <script crossorigin="anonymous" integrity="sha256-Fhzsf0y5oYf2bC7Lj1nJCY4q1kRYr5F+xy+dYda4CJs=" src="https://assets-cdn.github.com/assets/frameworks-161cec7f4cb9a187f66c2ecb8f59c9098e2ad64458af917ec72f9d61d6b8089b.js"></script>
      <script async="async" crossorigin="anonymous" integrity="sha256-6GclomzQZhC8tOsFlcV3/1XOAni+DpFzV8KEBX3gDAQ=" src="https://assets-cdn.github.com/assets/github-e86725a26cd06610bcb4eb0595c577ff55ce0278be0e917357c284057de00c04.js"></script>
      
      
    <div class="js-stale-session-flash stale-session-flash flash flash-warn flash-banner hidden">
      <span class="octicon octicon-alert"></span>
      <span class="signed-in-tab-flash">You signed in with another tab or window. <a href="">Reload</a> to refresh your session.</span>
      <span class="signed-out-tab-flash">You signed out in another tab or window. <a href="">Reload</a> to refresh your session.</span>
    </div>
  </body>
</html>

