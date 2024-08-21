using CatalogService as service from '../../srv/CatalogService';
annotate service.POs with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'CURRENCY_code',
                Value : CURRENCY_code,
            },
            {
                $Type : 'UI.DataField',
                Value : GROSS_AMOUNT,
            },
            {
                $Type : 'UI.DataField',
                Value : NET_AMOUNT,
            },
            {
                $Type : 'UI.DataField',
                Value : TAX_AMOUNT,
            },
            {
                $Type : 'UI.DataField',
                Label : 'NODE_KEY',
                Value : NODE_KEY,
            },
            {
                $Type : 'UI.DataField',
                Label : 'PO_ID',
                Value : PO_ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'PARTNER_GUID_NODE_KEY',
                Value : PARTNER_GUID_NODE_KEY,
            },
            {
                $Type : 'UI.DataField',
                Label : 'LIFECYCLE_STATUS',
                Value : LIFECYCLE_STATUS,
            },
            {
                $Type : 'UI.DataField',
                Label : 'OVERALL_STATUS',
                Value : OVERALL_STATUS,
            },
            {
                $Type : 'UI.DataField',
                Label : 'OverallStatus',
                Value : OverallStatus,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ColorCode',
                Value : ColorCode,
            },
        ],
    },

    /// secondary 
    UI.Facets : [

        {
            $Type : 'UI.CollectionFacet',
            Facets : [
                {
                    $Type : 'UI.ReferenceFacet',
                    ID : 'GeneratedFacet1',
                    Label : 'General Information',
                    Target : '@UI.FieldGroup#GeneratedGroup',
                    },
                    {
                     $Type : 'UI.ReferenceFacet',
                        Target : 'Items/@UI.LineItem',
                    },
            ],
        },
         
    ],
   
    
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : NODE_KEY,
            Label : '{i18n>nodekey}',
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Currency}',
            Value : CURRENCY_code,
        },
        {
            $Type : 'UI.DataField',
            Value : GROSS_AMOUNT,
            Label : '{i18n>gross}',
        },
        {
            $Type : 'UI.DataField',
            Value : NET_AMOUNT,
            Label : '{i18n>netamou}',
        },
        {
            $Type : 'UI.DataField',
            Value : TAX_AMOUNT,
            Label : '{i18n>taxamount}',
        },
        {
            $Type : 'UI.DataField',
            Value : OVERALL_STATUS,
            Label : 'Status',
            Criticality : ColorCode,
            CriticalityRepresentation : #WithIcon
        },
    ],
    UI.SelectionFields : [
        CURRENCY_code,
        OVERALL_STATUS,
        NODE_KEY,
        LIFECYCLE_STATUS,
    ],
);
annotate service.PurchaseOrderItemSet with @(
    UI.LineItem:[
        {
            $Type : 'UI.DataField',
            Value : NODE_KEY,
        },
        {
            $Type : 'UI.DataField',
            Value : PO_ITEM_POS,
        },
        {
            $Type : 'UI.DataField',
            Value : GROSS_AMOUNT,
        },
        {
            $Type : 'UI.DataField',
            Value : TAX_AMOUNT,
        },
        {
            $Type : 'UI.DataField',
            Value : CURRENCY_code,
        },
    ]
    

);



annotate service.POs with {
    PARTNER_GUID @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'BusinessPartnerSet',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : PARTNER_GUID_NODE_KEY,
                ValueListProperty : 'NODE_KEY',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'BP_ROLE',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'EMAIL_ADDRESS',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'PHONE_NUMBER',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'FAX_NUMBER',
            },
        ],
    }
};

