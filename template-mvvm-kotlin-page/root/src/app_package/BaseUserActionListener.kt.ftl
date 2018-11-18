package ${packageName};

import ${applicationPackage?replace('.development', '')}.utils.base.BaseUserActionListener

 
interface ${className}UserActionListener : BaseUserActionListener {

    fun onClickTest(text: String)

}