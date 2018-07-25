<template>
    <div>
    	<component-sidenav></component-sidenav>
	    <div class="page-container">
    		<component-header></component-header>
	        <div class="page-content-wrapper">
		        <div class="content">
		            <router-view></router-view>
		        </div>
	        </div>
	    </div>
	    <component-footer></component-footer>
	</div>
</template>
<script>
import componentHeader from './partials/header.vue';
import componentSidenav from './partials/sidenav.vue';
import componentFooter from './partials/footer.vue';

export default {
	components: {
		'componentHeader' : componentHeader,
		'componentSidenav' : componentSidenav,
		'componentFooter' : componentFooter,
	}
}
</script>