<template>
    <div>
    	<component-header></component-header>
    	<component-sidenav></component-sidenav>
	    <div class="page-container">
	        <div class="page-content-wrapper">
	            <router-view></router-view>
	        </div>
	    </div>
	    <component-footer></component-footer>
	</div>
</template>
<script>
import componentHeader from '/partials/header.vue';
import componentSidenav from '/partials/sidenav.vue';
import componentFooter from '/partials/footer.vue';

export default {
	components: {
		'component-header' : componentHeader,
		'component-sidenav' : componentSidenav,
		'component-footer' : componentFooter,
	}
}
</script>