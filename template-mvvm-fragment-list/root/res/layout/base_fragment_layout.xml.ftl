<layout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:tools="http://schemas.android.com/tools"
    xmlns:app="http://schemas.android.com/apk/res-auto">

    <data>

        <variable
            name="mViewModel"
            type="${packageName}.${className}ViewModel" />

        <variable
            name="mListener"
            type="${packageName}.${className}UserActionListener" />
        
    </data>

    <android.support.design.widget.CoordinatorLayout
        android:layout_width="match_parent"
        android:layout_height="match_parent">

        <android.support.v7.widget.RecyclerView
            android:id="@+id/recycler${className}"
            android:layout_width="match_parent"
            android:layout_height="match_parent"
            app:listData${className}="@{mViewModel.b${className}List}" />


    </android.support.design.widget.CoordinatorLayout>
</layout>