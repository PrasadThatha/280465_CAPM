sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ust/prasad/thatha/applicationsenario2/test/integration/FirstJourney',
		'ust/prasad/thatha/applicationsenario2/test/integration/pages/POsList',
		'ust/prasad/thatha/applicationsenario2/test/integration/pages/POsObjectPage',
		'ust/prasad/thatha/applicationsenario2/test/integration/pages/PurchaseOrderItemSetObjectPage'
    ],
    function(JourneyRunner, opaJourney, POsList, POsObjectPage, PurchaseOrderItemSetObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ust/prasad/thatha/applicationsenario2') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThePOsList: POsList,
					onThePOsObjectPage: POsObjectPage,
					onThePurchaseOrderItemSetObjectPage: PurchaseOrderItemSetObjectPage
                }
            },
            opaJourney.run
        );
    }
);