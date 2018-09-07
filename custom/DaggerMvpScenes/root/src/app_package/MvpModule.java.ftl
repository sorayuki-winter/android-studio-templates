package ${scenesPackage};

import ${packageName}.di.ActivityScoped;
import ${packageName}.di.FragmentScoped;

import dagger.Binds;
import dagger.Module;
import dagger.android.ContributesAndroidInjector;

@Module
public abstract class ${scenesClass}Module {

    @FragmentScoped
    @ContributesAndroidInjector
    abstract ${fragmentClass} ${fragmentClass?uncap_first}();

    @ActivityScoped
    @Binds
    abstract ${scenesClass}Contract.Presenter ${scenesClass?uncap_first}Presenter(${scenesClass}Presenter presenter);
    
    //TODO: move following code to di.ActivityBindingModule
    /*
    @ActivityScoped
    @ContributesAndroidInjector(modules = ${scenesClass}Module.class)
    abstract ${activityClass} ${activityClass?uncap_first}();
    */
}
