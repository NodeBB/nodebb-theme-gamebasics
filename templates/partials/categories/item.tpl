<li component="categories/category" data-cid="{../cid}" data-numRecentReplies="1" class="row clearfix">
	<meta itemprop="name" content="{../name}">
 
	<div class="no-padding content col-xs-12 <!-- IF config.hideCategoryLastPost -->col-md-10 col-sm-12<!-- ELSE -->col-md-7 col-sm-9<!-- ENDIF config.hideCategoryLastPost -->">
		<div class="panel-container full-height-panel">
			<div class="category-text-container">
				<div class="icon pull-left" style="{function.generateCategoryBackground}">
					<i class="fa fa-fw {../icon}"></i>
				</div>

				<h2 class="title">
					<!-- IMPORT partials/categories/link.tpl --><br/>
					<!-- IF ../descriptionParsed -->
					<div class="description">
						{../descriptionParsed}
					</div>
					<!-- ENDIF ../descriptionParsed -->
					<!-- IF !config.hideSubCategories -->
					{function.generateChildrenCategories}
					<!-- ENDIF !config.hideSubCategories -->
				</h2>
				<span class="visible-xs pull-right">
					<a class="permalink" href="{../teaser.url}">
						<small class="timeago" title="{../teaser.timestampISO}"></small>
					</a>
				</span>
			</div>
		</div>
	</div>

	<!-- IF !../link -->
	<div class="col-md-1 hidden-sm hidden-xs stats no-padding">
		<div class="panel-container full-height-panel">
			<div class="center-text-container">
				<div class="center-text">
					<span class="{../unread-class} human-readable-number" title="{../totalTopicCount}">{../totalTopicCount}</span><br />
					<small>[[global:topics]]</small>
				</div>
			</div>
		</div>
	</div>
	<div class="col-md-1 hidden-sm hidden-xs stats no-padding">
		<div class="panel-container full-height-panel">
			<div class="center-text-container">
				<div class="center-text">
					<div class="vertical-center-text">
						<span class="{../unread-class} human-readable-number" title="{../totalPostCount}">{../totalPostCount}</span><br />
						<small>[[global:posts]]</small>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- IF !config.hideCategoryLastPost -->
	<div class="col-md-3 col-sm-3 hidden-xs stats no-padding" component="topic/teaser">
		<div class="panel-container full-height-panel">
			<div class="category-text-container">
				<!-- IMPORT partials/categories/lastpost.tpl -->
			</div>
		</div>
	</div>
	<!-- ENDIF !config.hideCategoryLastPost -->
	<!-- ENDIF !../link -->
</li>
