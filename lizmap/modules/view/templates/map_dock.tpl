    <div class="tabbable">
      <ul id="dock-tabs" class="nav nav-tabs" style="display: none;">
      {foreach $dockable as $dock}
        <li id="nav-tab-{$dock->id}"><a href="#{$dock->id}" data-toggle="tab"><!--{$dock->title}--></a></li>
      {/foreach}
      </ul>
      <div id="dock-content" class="tab-content">
      {foreach $dockable as $dock}
        <div class="tab-pane" id="{$dock->id}">
          {$dock->fetchContent()}
        </div>
      {/foreach}
      </div>
    </div>

<input type="image" id="dock-close" src="{$j_themepath.'css/img/close.png'}" width="15" height="15"/>

<!--button id="dock-close">
  <img src="{$j_themepath.'css/img/close.png'}" width="15" height="15" alt={@view~map.bottomdock.toolbar.btn.clear.title@}</a>
</button-->
