<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>
<script
	src="${pageContext.request.contextPath}/assets/vendor/summernote/summernote-bs4.min.js"></script>

<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/js/dropdownFilter.js"></script>
<!---------------  Slide  ---------------->
<script type="module"
	src="${pageContext.request.contextPath}/js/slide.js"></script>

<!---------------  Import Footer ---------------->
<script type="module"
	src="${pageContext.request.contextPath}/newjs/importPage.js"></script>
<script>
	function menuToggle() {
		const toggleMenu = document.querySelector(".menu");
		toggleMenu.classList.toggle("active");
	}
</script>