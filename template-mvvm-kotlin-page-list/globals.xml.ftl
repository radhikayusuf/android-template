<?xml version="1.0"?>
<globals>
	 <global id="resOut" value="${resDir}" />
	 <global id="srcOut" value="${srcDir}/${slashedPackageName(packageName)}" />
	 <global id="hasNoActionBar" type="boolean" value="false" />
     <global id="parentActivityClass" value="" />
     <global id="simpleLayoutName" value="${layoutName}" />
     <global id="excludeMenu" type="boolean" value="true" />
     <global id="activityClass" type="string" value="${className}Activity"/>
     <global id="generateActivityTitle" type="boolean" value="false" />
     <#include "../../activities/common/common_globals.xml.ftl" />
     
</globals>