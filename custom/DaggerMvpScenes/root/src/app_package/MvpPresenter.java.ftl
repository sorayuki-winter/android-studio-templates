package ${scenesPackage};

import ${packageName}.data.source.Repository;

import javax.inject.Inject;

public class ${scenesClass}Presenter implements ${scenesClass}Contract.Presenter {

    private boolean isFirst = true;

    private ${scenesClass}Contract.View mView;
    private Repository mRepository;

    @Inject
    ${scenesClass}Presenter(Repository repository) {
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
        if (isFirst) {
            isFirst = false;
        } else {
            return;
        }
    }
}
