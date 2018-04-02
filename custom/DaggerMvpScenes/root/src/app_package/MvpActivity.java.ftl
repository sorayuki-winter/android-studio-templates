package ${scenesPackage};

import android.os.Bundle;
import android.support.v4.app.FragmentManager;

import ${packageName}.R;

import javax.inject.Inject;

import dagger.android.support.DaggerAppCompatActivity;

public class ${activityClass} extends DaggerAppCompatActivity {

    @Inject
    FragmentManager fm;

    @Inject
    ${fragmentClass} ${scenesLower}Fragment;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${activityLayout});

        ${fragmentClass} fragment = (${fragmentClass}) fm.findFragmentById(R.id.frame_${scenesLower});

        if (fragment == null) {
            fragment = ${scenesLower}Fragment;
            fm.beginTransaction().replace(R.id.frame_${scenesLower}, fragment).commit();
        }
    }
}
