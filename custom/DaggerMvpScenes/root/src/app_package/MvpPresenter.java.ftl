package ${scenesPackage};

import ${packageName}.data.source.Repository;

import javax.inject.Inject;

public class ${scenesClass}Presenter implements ${scenesClass}Contract.Presenter {

    private Repository mRepository;
    private ${scenesClass}Contract.View mView;
    private boolean isFirst = true;

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
        // TODO do first run
    }
}
