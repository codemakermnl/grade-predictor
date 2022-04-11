<style>
	.error-message {

	}
</style>

<div class="content">
	<div class="container-fluid">
		<div class="main-content" style="margin-bottom:80px;">
			<div class="col-md-4">

			</div>
			<!--           <div class="col-md-6 alert alert-success" role="alert"></div> -->
			<div class="row">
				<div class="col-md-4"></div>
				<div class="alert-content col-md-4">
					<h3><p>Student Grade Classifier</p></h3>
					<form>
						<div class="form-group">
							<div class="row">
								<div class="col-md-5">
									<label class="mt-3" style="font-size: 16px">1st Semester GWA Grade</label>
								</div>
								<div class="col-md-7">
									<input type="number" step="0.01" class="form-control required-input " id="sem1_grade" name="sem1_grade">
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-md-5">
									<label class="mt-3" style="font-size: 16px">2nd Semester GWA Grade</label>
								</div>
								<div class="alert alert-danger d-none error-message text-center"></div>
								<div class="col-md-7">
									<input type="number" step="0.01" class="form-control required-input " id="sem2_grade" name="sem2_grade">


								</div>
							</div>
						</div>

						<div class="form-group">
							<div class="row">
								<div class="col-md-6">
									<label class="mt-3" style="font-size: 18px">Final Remark</label>
								</div>
								<div class="alert alert-danger d-none error-message text-center"></div>
								<div class="col-md-6">
									<label class=" mt-3" id="final_remark" style="font-size: 18px" ></label>
								</div>
							</div>
						</div>

						<div class="form-group">
							<div class="row">
								<div class="col-md-12">
									<button type="button" class="btn btn-primary col-12 mt-5 btn-get-remark">Get Final Remark</button>
								</div>
							</div>
						</div>

					</div>

				</form>


			</div>

		</div>

	</div>
</div> <!-- main content -->
</div>

</div>




<script type="text/javascript">
	$(document).on('click', '.btn-get-remark', function(){
		var sem1_grade = $('#sem1_grade').val();
		var sem2_grade = $('#sem2_grade').val();

		if( sem1_grade && sem2_grade ) {
			$.ajax({
				url: "<?=base_url()?>ajax/classify-grade",
				type: "POST",
				data: { sem1_grade: sem1_grade,
						sem2_grade: sem2_grade
				},
				success: function(data) {
					var result = document.getElementById('final_remark');

					if( data ) {
						console.log(data);
						result.innerHTML = data;
					}
				}, 

				error   : function (data) {
					alert('Error Occured');
					console.log(data);
				}

			});
		}

		
			
	});

	</script>