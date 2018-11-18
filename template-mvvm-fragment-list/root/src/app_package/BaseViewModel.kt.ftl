package ${packageName};
 
import android.app.Application
import android.arch.lifecycle.AndroidViewModel
import android.databinding.ObservableArrayList
import android.databinding.ObservableList
import android.databinding.BindingAdapter
import android.support.v7.widget.RecyclerView
import ${applicationPackage?replace('.development', '')}.utils.base.BaseViewModel
import ${applicationPackage?replace('.development', '')}.utils.helper.SingleLiveEvent


class ${className}ViewModel(context: Application) : BaseViewModel(context) {

	val b${className}List: ObservableList<${className}Model> = ObservableArrayList()
    val eventClickItem = SingleLiveEvent<${className}Model>()

    override fun start(){
		super.start()
		loadData()
    }


    fun loadData(){
    	b${className}List.clear()
    	b${className}List.add(${className}Model("Radhika"))
    	b${className}List.add(${className}Model("Yusuf"))
    	b${className}List.add(${className}Model("Alifiansyah"))
    	b${className}List.add(${className}Model("GITS Indonesia"))
    }


	companion object {
	// TODO move this function to BaseBinding class
	// function for bindingsList

		@BindingAdapter("app:listData${className}")
		@JvmStatic
		fun setListData${className}(recyclerView: RecyclerView, data: List<${className}Model>) {
			with(recyclerView.adapter as ${className}Adapter) {
				replaceData(data)
			}
		}
	}

}