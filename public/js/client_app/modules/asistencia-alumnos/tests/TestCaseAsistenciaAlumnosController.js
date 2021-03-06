describe("AsistenciaAlumnosController", function() {
	
	it("creates and subscribes to asistencia-alumnos route", function() {

		var controller = new AsistenciaAlumnosController(new BaseRouter());

		spyOn(controller, "index");

		Backbone.history.loadUrl("asistencia-alumnos/5");

		expect(controller.index).wasCalledWith("5");

	});

	it("has AsistenciaAlumnosTable as this.list with this.collection", function() {
		
		var controller = new AsistenciaAlumnosController(new BaseRouter());

		expect(controller.list instanceof AsistenciaAlumnosTable).toBe(true);
		expect(controller.collection instanceof AsistenciaAlumnosCollection).toBe(true);
		expect(controller.list.collection).toBe(controller.collection);

	});

	it("fetches alumno on index", function() {
		
		var controller = new AsistenciaAlumnosController(new BaseRouter());
		var mocked_model = prepare_mocked_model_for(controller);

		var id_on_fetch_call;
		spyOn(mocked_model, "fetch").andCallFake(function(){
			id_on_fetch_call = mocked_model.get("id");
		});
		spyOn(controller, "view");

		controller.index(5);

		expect(mocked_model.fetch).wasCalled();
		expect(id_on_fetch_call).toEqual(5);
		expect(controller.view).wasCalledWith(controller.list);

	});

	it("fetches collection on index model fetch success", function() {

		var controller = new AsistenciaAlumnosController(new BaseRouter());
		var mocked_model = prepare_mocked_model_for(controller);
		spyOn(controller.collection, "fetch");
		spyOn(mocked_model, "fetch");

		controller.index(5);

		mocked_model.trigger("fetch", mocked_model);

		expect(controller.collection.fetch).wasCalledWith(5);

	});

	it("renders list on collection fetch success", function() {
		
		var controller = new AsistenciaAlumnosController(new BaseRouter());
		spyOn(controller.list, "render");

		controller.collection.trigger("fetch:success", {"data": {"list":"collection", "number_of_entries":"5"}});

		expect(controller.list.render).wasCalled();

	});

	function prepare_mocked_model_for(controller, data)
	{
		if(data === undefined) data = {};
		
		var mock = new controller.model(data);
		spyOn(controller, "model").andReturn(mock);
		return mock;
	}

});