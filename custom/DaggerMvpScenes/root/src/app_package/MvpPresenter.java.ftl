package ${scenesPackage};

import ${packageName}.data.source.Repository;

import javax.inject.Inject;

public class ${scenesClass}Presenter implements ${scenesClass}Contract.Presenter {

    private ${scenesClass}Contract.View mView;

    private Repository mRepository;

    @Inject
    ${scenesClass}Presenter(Repository repository) {
        this.mRepository = repository;
    }

    @Override
    public void takeView(${scenesClass}Contract.View view) {
        mView = view;
    }

    @Override
    public void dropView() {
        mView = null;
    }
}
