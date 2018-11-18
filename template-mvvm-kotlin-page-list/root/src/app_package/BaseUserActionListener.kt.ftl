package ${packageName};

 import ${applicationPackage?replace('.development', '')}.utils.base.BaseUserActionListener

interface ${className}UserActionListener : BaseUserActionListener {

    fun onClickItem(data: ${className}Model)

}