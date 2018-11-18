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


        <Button
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
            android:text="TEST"
            android:layout_gravity="center"
            android:onClick="@{() -> mListener.onClickTest(`Replace this! ;)`)}"/>


    </android.support.design.widget.CoordinatorLayout>
</layout>