package ${scenesPackage};

import ${packageName}.data.source.Repository;

import javax.inject.Inject;

public class ${scenesClass}Presenter implements ${scenesClass}Contract.Presenter {

    private ${scenesClass}Contract.View mView;

    private Repository mRepository;
    
    private Context mContext;

    @Inject
    ${scenesClass}Presenter(Context context, Repository repository) {
        mContext = context;
        mRepository = repository;
    }

    @Override
    public void takeView(${scenesClass}Contract.View view) {
        mView = view;
        start();
    }

    @Override
    public void dropView() {
        mView = null;
    }
    
    public void start() {
    }
}
