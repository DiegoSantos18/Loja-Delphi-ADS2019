object frmCadCidade: TfrmCadCidade
  Left = 0
  Top = 0
  Caption = 'Cadastro de Cidade'
  ClientHeight = 316
  ClientWidth = 737
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object panel: TPanel
    Left = 0
    Top = 51
    Width = 737
    Height = 181
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 39
      Top = 22
      Width = 41
      Height = 13
      Caption = 'CODIGO'
    end
    object Label2: TLabel
      Left = 40
      Top = 64
      Width = 29
      Height = 13
      Caption = 'NOME'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 40
      Top = 104
      Width = 13
      Height = 13
      Caption = 'UF'
      FocusControl = DBEdit3
    end
    object DBText1: TDBText
      Left = 40
      Top = 41
      Width = 65
      Height = 17
      DataField = 'CODIGO'
      DataSource = dsCid
    end
    object DBEdit2: TDBEdit
      Left = 40
      Top = 80
      Width = 273
      Height = 21
      DataField = 'NOME'
      DataSource = dsCid
      TabOrder = 0
    end
    object DBEdit3: TDBEdit
      Left = 39
      Top = 123
      Width = 41
      Height = 21
      DataField = 'UF'
      DataSource = dsCid
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 232
    Width = 737
    Height = 84
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      737
      84)
    object btnInserir: TPngBitBtn
      Left = 16
      Top = 6
      Width = 114
      Height = 65
      Anchors = [akLeft, akBottom]
      Caption = 'Inserir'
      Layout = blGlyphTop
      TabOrder = 0
      OnClick = btnInserirClick
      PngImage.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000002A744558744372656174696F6E2054696D65004D692035204D727A20
        323030332031373A30313A3035202B303130308C96156A0000000774494D4507
        D3080E0A2A30CCF48181000000097048597300000AF000000AF00142AC349800
        0006694944415478DACD576B6F1465143EB397A1BB6B2FD0025D6C69B9B61583
        1184064550F9828D2111E5524D8448BC24821FF483FE036304A310630268044D
        8D262D18288298A64D85064A6F1AA876B7DDD2D2ED6EBBDD6EB7B33BF71DCF79
        97C14261DA12A24EF2E69D99ED9CE739E73CE7BCA71CFCC717F7BF26D0D060E4
        0842680DC7712B64595BACEB6AA1AE6B731445CD5655DD934A294E45D1405535
        5D92A4A4AAAA82248923F82EA469729F282A7F793C39CDFBF76FED991181A121
        A3626808DE8FC5A4F5B22CF348000CC3008EB3190006BB4FA552B473B4EBBA4E
        CF86A2289CA669904C26219148C0D8D81844A351231289FB90E461BFDF77F0F2
        E5CF554B027EBFF181A2181FC5623A970666C6D922E3E6FD046093CCAD9D16FD
        46DFDB6C36F65D4D4D0D442291E375759FECB224D0D020FB366CE0974622060C
        0E6AE8850E8AA2A3D189C0DA04B0145B26197C05142502C794B0480C0E0E427F
        7F3F5CBB762D72E1C2C1B996041A1BE5DE8202BEC8E502703A013D20CF018D71
        08407B0A17E03BDA75406D8024A9208A32865E4640014647E3147ADC47617C7C
        9CEDE17018BF37224D4D87E64E118164A0A8C855ACEB061AD6D0A082C655BC97
        41104406A2EB29B0DB6DB8A7DF63EE9108ED32DBC973142503170481ED140951
        94862E5DFA62BE2581FAFAA46FD122D75293002AF92601858193A74480424CB9
        4D03A709988B9E455164C0E62202894472B0B9F9CB05534420D15554E45E86E1
        7AA004281282303ED0D272A4C092405DDD78ADD7CB576464F0682885AC250456
        EE9B0001C7E371569AB158ECCFB6B6A3659604CE9F17FED8B8D1F3682030067D
        7D02783C1E54B69D199D48C02C2FCAF54402E63311C0B283919111E0791E7272
        72A0B5B53589043C531018EB58B2246B6576362038406F6F1482C1381A1351CD
        22E5110124F6B7547AA6C7665FA0D22462663FA048058341FC7E184B7A3CDEDE
        7E347B2A02ED48E031FA983440ADD6860D901695A124A510D460BA20B5133879
        6D46202DB6040BBD5986FFA44218696B3B9C6749E0DCB9687349C9EC27A8A110
        882942DA0541A25262DEDAEDF6198B10B5308429B02EC3B36747AB0A0A1EAAF4
        781CB711784055D08D55B0D492C09933D19FD7AEF56C8E46EDE829C780D3CD48
        9A11014A0B81D281442B232303F5741D5370C43A05A74F0F37AE5A95B7DEED96
        C0E71BC51E9E400567B14A20F0740A0CCB2A282E9ECD22904AC9CC26CF3B61D6
        2C1B381C9CB663C7B3CEA908D49796E66D44FBAC0A9038F4F484582584C349D6
        E70958D354A60502A76712A4794095967AE12D65D39DA6E1C7F9F5DAF6EDCF58
        13A8AD0DFD5A52326F93DDCEB1DC53F8D39500E8013000C4C474E8EC1C989802
        F29A1ACE82051E78355A0E357BF7422225C12F57AFC2B70D4DD32370EA54A80A
        43589999C9A3B1DB45280874E2995560BBA7068A8BE7C0AEF893F0F5DBAF8380
        A41A7C5D507DB105BEC93C3BBA7BF7E63996044E9E0C7FBF7A75CE4E4972B25C
        4FA715E7E7BB594A280DE9A5310247DEDC0D38A3415D67279C6AEE80AFDC67A4
        3D7B2A5C96044E9C18F8A9BC3C7F0BCFCBD0DE1E0597CB8DE1772090CA085004
        4C02E6B14B217FDEBF6C52CE3F7B6D2748189D4E1C488E610A265DFBD0CC6402
        C1EAB2B2B95BA90FE4E602040211E8EA1A4601A6673C4DD3C1ED76A340DDECEF
        D31170C1B6D0E37062EF3E185105D0B0258BA4092448F70E84E1B1711118CA08
        5A713A3AF6DBE57B11E8AB2A2BF35666643830FC2A0B7366A61D05E840CF6DD8
        CD54AC88080C0F8F32C1D1EF0B1766C396EB8FC077EFBC01116C3AAC3AF0BD42
        631ACD86047C73B0E551CDED030350D5D4727702D5D537DEF37A330F141666A1
        E854967F538CA407EA03D4A69D4E0703A214CC9B370B2ABA97C3BECDCF411C45
        A7E27B37CE738BF3F24045226124D5150AB1283891C00046F24A77FFDD097474
        189E9E9EE025AC841559592EF45864A548256725C217022593527CA0F2251051
        038D7E3F9CEBE89C9E06E86A6B33F2C3E1EE1FB0873D9D9B9BC391C744229110
        5914CC7980444804BC5EF7AD664413B3C7C323A195F0291248E2EF4DBD01A86D
        BDCA00EFC4B2F8CFC8E09A9B856D7D7DE3EF269363EB9C183B9B8DBC4E9FF14E
        0CB1390F982D988E619A86D7AD2B86176F94C3C1575E0609495D0C04E0E495DF
        674A60626F881406833DCFCAB2B41AD772D4C1C3E8ED6C6C4019E43976401D49
        C4E2F1B1104ECEFEFCFCCCAEE36B3EFC78D7536B98187D38199939BF2F02F775
        1D02E36E39FFF7084CF3FA1B91F92F7B0AACC7DD0000000049454E44AE426082}
    end
    object btnEditar: TPngBitBtn
      Left = 145
      Top = 6
      Width = 114
      Height = 65
      Anchors = [akLeft, akBottom]
      Caption = 'Editar'
      Layout = blGlyphTop
      TabOrder = 1
      OnClick = btnEditarClick
      PngImage.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000002A744558744372656174696F6E2054696D65004D692035204D727A20
        323030332031373A30313A3035202B303130308C96156A0000000774494D4507
        D309120A05318E4048ED000000097048597300000AF000000AF00142AC349800
        0007A84944415478DAC5976B6C1CD515C7CFECAED7BB3BFBF27A975DDB1B9CC4
        6E5E904743524163705422A50A0A502A4A5141A655D54A69D5A2F2A1FD40AA36
        5F129594B421558B130A028490502D0254152F933409C45962C7496B4CBCF5DB
        DE78DF8FD99DF74CCF99F5B886A61BA74AD591AEEEECD873CEEF9EF33FE7DE61
        E0FF7C314BFDC79327753FC75DD9CA30CC2DA2A8AC54557999AA2A0149927DB2
        ACB29A26D5499202B2ACA88220546459E60481CFE0B32B8A224EF2BCF429CBFA
        63070F3E307A5D00C9A4BE2B998427F279A14314453B0280AEEBC030161D4037
        EE354DA399A1595555FAAD4B92C4288A02954A05CAE532140A05C866B37A3A5D
        1C41C8EE787CE4F0B973BF956B02C4E3FA4F2549DF9FCFAB4CD5B161DC1864DC
        BC5FE4D884599869D0DFE87D8BC562BCD7D3D303E974FAC5DEDEA7BA6A029C3C
        298EDC7597BD3D9DD621915070152A48928A46173B561639D38C61C2E023A028
        91734C891189442201535353303434943E73E670A826C0A953E278346A6F753A
        01EAEA0057402B0734C6A0039A351C80CF685601B501822003CF8B187A111D72
        90CB1529F438E7A0542A19F3DCDC1CBEAFA73FFAE899D0352250196B6D752E57
        551D0D2B685042E332DE8BC071BCE1445535B05A2D38579F63EE118466D19869
        E5284AC339C771C64C91E07921D9D7F7BB704D8013272A232B5638DB4D0054F2
        3C806438A79512008598725B755C053007FDE679DE706C0E0228972B8958ECF7
        CDD78840F9726BABEB0B18AE1B0A4091E0B8D2CCF9F347A335017A7B4B7F6E6A
        B2EF7238EC6848436A011D4BFF3500392E168B4669E6F3F9E18181636B6B02BC
        FB2E77A9B393BD756CAC0093931CB02C8BCAB61A46170398E545B95E0C60FE26
        002C3BC8643260B7DBC1EFF7437F7F7F0501D89A00EFBD57B8B872A577BDCF07
        E81C607C3C0BB3B34534C6A39A79CA233A108CFFA5D233576CF6052A4D0233FB
        01456A767616DF4F6149978A172E1CF32D00CC7D65F9DAA95C659F50963A5389
        029728E9DD9D43DC1E37CB2E5394AA06A8D55AB001D2A03214040D9DEA862E48
        EDE49C566D46A02AB6B2117AB30CFF950A2E3330D01D34004AF7AFDE9893B453
        AE70C823EDF816A43D4D101FBC0CDCCD6DF2F6ED3BEBAC360F12CB0B22A499E3
        042A2563B556ABF5BA45885A48620AAA6538B3ABED8DFA5070B7FBE9B7A02E10
        84BF2507E0ACF01664D259ECC71ED872FB97610DB3035229F14656C13FB00ADA
        0D80E97BDA52EACEAE60E4077BE174FA35180CF58050D1A128F0C648C5537077
        C3A3F055FF1E48CC4AF3D5B074004A0B39A50D8986C3E1403D4D600A8E565330
        DE199D1CFBFAE3CB6C5FEA8037DB7F09614F089C363BE07E0A459E202A909A4E
        43B8B80A1E8DEE073EEBC632E2E753A05FB30AC839F57FBA9CD8D78BC502024C
        F18383C75C06C0F01D9183FDED773E11BF670DA4B7F7811F73EE45D9BBB064CA
        68A880422A8902643379B025EBE1E1D03EE02742B85BCE198E154536B440CEE8
        370972F1AE4817AD9ACA9036A3AA064A3C46A00A301805C7AB1DDF3C9DFE62FD
        6DE243A3E0B3B8C18BA43E8470D7D743050D13044524871B4C79A2080FDFFC24
        DCC2EC445DC8980ED5D80716A780F26E9E0528EFD4803E570508D0ED5A28C33D
        3FFC51A492E34EE77E7CA9CDEF63C183C42604DD0B0481068BB4B1604A321369
        D86AB91F3A6CDF85B944B53B5E67158C6215B47DA611DD79687D3BE7499D6ED9
        D81C6EF0780CC73E97CB181E84A1D0E60D08D405A624379B8570A11D1E0CEC83
        EC8C156B9D5B522BA6B460332AC462CFFAFFAD136E7E3EBA5953D4DEE64D115F
        C05D85F0CE43F81042C10E47100512A658063983157145816F373E05E2780855
        CE5F15801AD1F4F434B8DD6EB0D96CF0C927C328C2E75C576DC59B5E68DEAE49
        DA5F9A36851D41B717BC08E1312170C816156E4AB8E0416E03D4C9F590955350
        BA380C93CD3F81D8C5248A2D67941B5581D982A952682FA16A48A552A4016CC5
        477DFF712FD8DCDDF4359961FE145ADFC8843DBE6A24480F1E07B44EB0D025DF
        81D2C6D7353C2261ABD647A7E053B81D628528865A36361D0A35859C609278B2
        C51D70BE0919A370FE7CB7BFE66674E0FD5FC59E8F1FDC72D3AD8D10F505C0ED
        72029FE2E125F10100970D01EC7856C359C60DA75082EC180367FDF7C2C8C8DC
        421F20DD5C4D84A552E1C3FEFEE7B6D504C013F1EE03EFEF7FF985C95F7BC36B
        1BA12514841D1F07E1FBD10E740C5500160F8C36344367C20F3E86B36B7E0617
        2E253E539604404EA924290A78261418C675772C76E8C36B7E17542A7AD7CF7B
        1F3FF4CAF41F1BEA5A5878BB701FAC6E6CAE3A752280DB09AF0D28305162A12E
        3F09AD1BEE8554128C8AA0D59B2D9A9AD0E8E8283ECF4F3A1C0D8F9C3973E014
        D95FD297119E761FFADEF16FEC7B79E6F55523DEEFC00A7FA80AE0B2C31BC33C
        9C9860A0351A011E431E685881078E35303696344EC374029E9E9ED1F3F9D265
        BBDD7154D3943FF4F51D2E9BB697FC6906BF01DB4A39D0F3986DF5EEBD916DF8
        261EFA593B3CF2CA18D89D2E688A44A0A5A505553EA72E5FBEEDCA3BEFC4E278
        728EF37CB95F1499BF9E3B77E8EF401F099FBB960E8057E417E07CB6B4E1E98D
        32DBA9D43B5685035E6BD70779C82A5668C063D3BA75EB48F1B923478E04966A
        F3BA00165FAF3EB6916D02DBA6BD43705B41D6B65A19660BEE74CDC160F099E3
        C78F3FF93F07B851D73F01BAF5AB7BF1D016BB0000000049454E44AE426082}
    end
    object btnCancelar: TPngBitBtn
      Left = 490
      Top = 6
      Width = 114
      Height = 65
      Anchors = [akRight, akBottom]
      Caption = 'Cancelar'
      Enabled = False
      Layout = blGlyphTop
      TabOrder = 2
      OnClick = btnCancelarClick
      PngImage.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000002A744558744372656174696F6E2054696D65004D692035204D727A20
        323030332031373A30313A3035202B303130308C96156A0000000774494D4507
        D3081509071125E9A5F7000000097048597300000AF000000AF00142AC349800
        0007AB4944415478DACD575B6C1CE515FE6667672FB3F13D2671587B1DDBC598
        704913074AC98552554044FBC04D49259A52102D6D5595F240E843CB4BDB87A6
        524B85A081BEA434908784200849A032B1A2608295D8564448BDF1DD5E7BD7EB
        F5AE7776EE979EFFDF6C626A67D39B44573AFA676677CEF79D73BE73FE7F057C
        C11FE1FF9A4077B757AD28339B0441586718768BE3588D8E63D79AA65565594E
        C4754DC9346D5896EDE8BAAE5A96A5E8BA3647CF666CDB18D734F3EF914875EF
        9E3D0F0EFF5B0452296F7B2A8567B3597DB36118012200CFF320083E0FF0F8B5
        EBBA6C15D8EA380EBBF74CD3146CDB86AAAA28140AC8E572C864325E3ABD1027
        927B2F5E8CBFF8C9277FB0CA12B878D17BCE34BDDF64B38E5004E6CEB931E7A5
        EB45C02532975766EC3BF6BECFE7E3EF1D3A7408E9747A5F57D76F779525D0DD
        6DC4B76E0DB4A5D31EA6A76D8AC281693AE47431B0BD08CCE55622438FC0B2C4
        C0A9243C13D3D3D3989898C0F9F3E7D3A74EBD585F96C0C993C668341A8885C3
        802481226091839C0904C056970CF48CAD0E481BD0750B9A6650EA0D0254303F
        BFC0524FEB3CF2F93C5F93C924BDEFA57B7AFE587F8D0CA823B158B8D9713C72
        6C9343939C5B746D4051340EE2382E44D1476BF139D59E88B0D5E02B8B9C44C9
        C11545E12BCB84A6E9A9D3A75F5A5596C089136A7CEDDA705B890029F9120193
        83B3481901966256DB22709140C9D8BDA6691CB8648C40A1A04EF7F6BEBCE61A
        19280CC662F297285DFF53022C138A929F3A73E6D56859025D5DF9230D0D81ED
        A150801CB9C45A2760F33F26C080171616786B66B3D90B7D7DAF759425F0C107
        CAB96DDB22378F8CE4303EAE20128990B245EE743181527BB15A2F2650BA6704
        A8ED30373787402080EAEA6A9C3D7B562502916B10C80DB4B656DE5A55050207
        464733482416C899466AD6581D0940E7BF65AD578AB83417586B3262A579C032
        954824E8FD596AE9FC427FFF6B55D722D04F046E632F330DB051EBA301C88CB5
        A1AEBB04EA715D30B533701675290345B11578EA4B6D78A514CA5C5FDFDE9565
        091C3F9EE96D6FAFE9640385819444C85645D1592BF16845515CA2013637EAEA
        C2A8A808C0EF073D33F94C181B9BC1C0401C232393292A41F9363C766C7E7F34
        BA626724E2FF1C817222B46D0B4D4D1568988F437EFFAF080DF52068AAB0298A
        3CC2986D5C8FD98DF7E39C25275F78E1F1D56509BCF75EE6E8EDB747EECB6444
        8A54E0C0C561A42F4B808177AC0DA3F92FBF809C3C03F99E7B21AEA656CFA480
        B91960210B733281990B23188DDE69478FBC5FD14A95BC2A8177DF9D3DB961C3
        CACDB2AC231E9FA7195E200557F24E60E0C51278BC0B5CD7415B5444C3AF77A2
        F6CB2D086EBA0B488E01239F01F36982D10095CC20A3326553395C98D0BBAD14
        EEDF4A15BE1A811337DEB8721BF9E75D100A01C3C333BC13924995D7F472E41D
        ABB0E9ED5FA1BE5142B0F3ABC0F98F812C01DB0EB95717192341411B0524674D
        4C4ED97B3BB3F8FEB2048E1C99F95B7BFB755F174581D79EA5BFD809E0C262DD
        41C1808DEA26E553D4BEF43D54FEE019E0D3D3049E2CBA64603A01ABB46A8562
        26B44B9920619E980CB881ACD679978ABE2504DE7967667F7373CD4EA66455FD
        BC081585ED78C52EE0A2DBB71B6B5B42106BA9B5E367881DB9A30D8A815C8E9C
        AF444263A40C805AF9236D153263C957BEA9E1E925040E1F4EBEB17163F50E5D
        9778ADAF368AA95551FBE34D687E6A17F49E2E749D53B1E69676ACA056AC0C8B
        A8200BCA21F80254C3003D0CD26A6970F6FD1E3DEAF5480E4D0E3EACBAED4B08
        BCF5D6D4DB77DCB1FA5B818081FEFE0CC26199D2EFA776B3380196014660DDBA
        5A547DA705D1279F847DF44D5CD8FE2CE447BF8B10D52A448789008186C9BB6F
        719D672760DFD784E37A0B9489297347DE082E432071B0A3A3FE413607EAEA48
        D023690C0ECE92008B673C9B0426CB32B66C6945DD1337A1F9A10780534731F6
        F0F3301ED8C54143A4DC60304846E25C8C901C81766F0B0E58B7C13FF699F958
        C15C8EC0F8FE8E8E869DA1909FD26F71C557548824403F45EEA3716A5147A489
        9C80F08FBE829BEFBE1518F8080BB76C83D5BE1E2281FBC311882B22F053FAD9
        C414243F0491149C4F61E8E7BB715C69843C7876F071074B4B70F0E0E4CF1A1A
        2A7ED7D85849A2B378FD4B62647A6073808DE958AC12913FEF46873E80607A8C
        8B8B0B90CE87A012814E47B0E887749CB3E992740C6A1C1C936E408EEEA5F1C1
        979F007EB884C0C08017191E4E9CA64E58575919A68835DE8AECE8B55884B22C
        A1D51945E8970FA1ED3A7668640CD8A9DD2B12A09D919969D3C6455FD3391671
        B70627C50ED44C0CB8C14261C36304B7ECFF82BE3E6F7532397480E4BBA5AEAE
        5A603E19894241E359289D07D6AC0923F2EA7368EA3F8095619767A1783CF738
        07C6C9728AE0436E353EF4DF84CACC24AA53E3AF7C1B787AD94174E5E309BDBD
        CA23E3E3F99FA86AEE4E4922481F9BFFC53D5E92243E0F5AA37EE49EDF81B644
        0F56452E05EE5EB1395742BF2F8631A11E91CC1482A9F10F9B80EDDFB8B41FFC
        4BFF0D0F1F4E372612C35F330C7D23D90DA483EBE92C5043DB7048103C617367
        6320FCFA1E49F8F85868455588441782020949AF0239C810941CA4B9842B6BEA
        5EDAA29EF969B9CDE8BFF91C95B03E0B3C650BC23D9E1888B1EDD8D6CD31AA60
        970CFC89D5FC9FDFF9C2FF1DFF033728EE6CE920904E0000000049454E44AE42
        6082}
    end
    object btnExcluir: TPngBitBtn
      Left = 271
      Top = 6
      Width = 209
      Height = 65
      Anchors = [akLeft, akRight, akBottom]
      Caption = 'Excluir'
      Layout = blGlyphTop
      TabOrder = 3
      OnClick = btnExcluirClick
      PngImage.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000002A744558744372656174696F6E2054696D65004D692035204D727A20
        323030332031373A30313A3035202B303130308C96156A0000000774494D4507
        D3090C0B020C286DD8A0000000097048597300000AF000000AF00142AC349800
        0006B84944415478DACD577B6C537514FE6EBB958E8E75830DD8284E64130482
        4118F2107C60A262220F4D0063D4F89F3124464348D418131394A821628C0AF8
        87244A6274FE03B889368CF1DAEA1E0C796DA39D7B745BDB757DDCF63EDADBEB
        39B75C9CC8BA608C78935F7EB777BBE7FBCE39DF39BF7305DCE64BF85F136868
        D08B4571A8461084858A92BE4BD352B3352D3D555553CE544A7364326ABEAAA6
        914AA535599693A9544A946569849E0DA5D34AAF24A9571C8E62CF871F6EF6DE
        128140405F1F08E0F548447E4051141B1180AEEB10048B0EE8C67D2693E15DE0
        5DD334FEADABAA2AA4D36924934924120944A35184C3613D148A7511C97DDDDD
        5D7B9B9B3F4EE524D0DDADEF5455FDBD484413B2C0867163B171F37E0CB049E6
        FACE8BFFC6EF5B2C16E3BDDADA5A8442A1836EF7072FE424D0D0A074AD5D6BAB
        0A85740C0EA6C90B0DAAAA91D1B1C0E9316019639964E811384A0C4E29312231
        383888BEBE3E5CBC783174EAD4DEB29C041A1B951E97CB56595000E4E7833C60
        CF41C60402E03D430BF48C770DA40DC8720A92A450E8150214313A1AE3D0D33E
        8A783C6EECC3C3C3F4BE1E3A73E693B2092290F4555616DCA9693A194E934195
        8CA7E85E81284A0688A66560B55A68CF3EA7DC1311DE156367CF499406B8288A
        C6CE91902439D0D4F4E98C9C048E1F4F76CD995350651220255F23A01AE0EC29
        13E010736EB3C05902E6E2DF922419C0E66202894472D0E3F9AC628208243A2B
        2B275753B8FE55021C09518C0FB4B4EC77E524E076C78F9497DBD6DBED363294
        21D63201ABFF980003C76231A3342391C8E5B6B603F7E42470EC9878FEC1071D
        8B7CBE287A7B45381C0E52B6D5303A9680595E9CEBB104CCDF4C80CA0E232323
        B0D96C282E2E466B6B6B9208382620103D37776ED162A713040EF4F484E1F7C7
        C898446A96388F04201BFFCBA5677A6CF6052E4D2666F6038E94DFEFA7F78354
        D2F1587BFB01E74404DA89C0BDFC326B805BAD851A202F2E4359CE10A86EE882
        D5CEE0ECB51981ACD81246E8CD32FC3315E2485BDBBED29C04EAEBC39E79F34A
        96714361105384BC8BA2CCA564786BB55A6F5984A48500A5207719D6D58D7EE3
        72156E7338F2FE42E05FAA82AB54055539091C3D1AFE71F972C7E3E1B0953C15
        0CE06C33926F8900A78541F940E265B7DB494FBF530AF6E74E415353F4DCBC79
        458B29DBE8EA1AA51E9E20051711190B4A4BF328AF490483129F8C39AB80C1B9
        FFF355407D3D168B12813EE9DCB903937312687EEDED70B8A1BE64D9E1466896
        7C620E78BD435411F9E8796E13E24B57415AF50C7AFBC286EA198C89B020C79E
        8A7CB1D75C867C18653510972802E31338007C5D5373C7B381E118A6BFFC0E9C
        DB5E216F15CC9891878E854E3CBABA0CC7CF06B0A0238ACB9713C6393036059C
        777316E0BC7303BAA10A88C0BEF1091CB2E767D63DBF44405844ED313F9E6CEC
        80B574267E72D9B1FE7117CA2AED3874D08B45678670E142F89F548197AA60EE
        B804BE023A9FD830BFBAECEE525C38E1C349B1146AE7256C7D6406CA5C0EF8DA
        83F054AC43F98E3D181848DC522BE6B450338A7A3C5F148F4BA01658A3574C39
        B179CB426E736871FBB06441092C8579404CC2E7752378E08793E88A4F2170FD
        FAB16B12B9910037A2FEFE7E141616222F2F0F972E5D26117E995B847BEC05DA
        AB2FDE63814A534746338840C8E0E0212FCA77EE86BF6A0D19564994593B0CC8
        7937CB8D09992D98CF0B3E4BB81A82C1206B805AF1FEF15BF13740E56085AB73
        EB7C8BAD621601A80CAEE3AA2F0EB7381D4F37B463C0AF51F8436470D40036E7
        44F6900F1DBEE7903399004DB674025E6B42C68AB6B4ECBB790AEA819A2E3A0A
        1E5B51EEAC5A380D1095ACF73494C2027CFFA31FD6873662D61B1FA1BB472640
        AB01C61EF3E2909B7D8053733311C6E3D1D3ADAD5FAEBE2981234EBB5EB38AC4
        36938E40EA7EEC793020A16C8AD54845504C53E9D198BD720B4AB6EFA2132E39
        A10819944B92A34033A12C0893D7793C7B4EFF8DC0B7C05B77543BDFBD7F7539
        8153EE6D02CE9E1C4687378E4D8F12291A5079320D2A19FC7A3E8ED96E2EC351
        C35313D024C1CF4C62DC84BC5E2F6926D26BB7973C77EAD4FB8D376A4E680726
        B5D1B7C8D68D738AECC5146BEAF3EE9F87D03765B66FE98E37FBAF6C7F69CDDA
        15C528730A3C12E3505D028BDA87D0D919BF3E0F98A1676F791AE609B8BF7F40
        8F44E29D369B7D7F2693FEBCA9696F0237B98C08D44F9D74D635ABE0FEEA3945
        F8EE701F8DF9FA8EBB80BD2B09B20E78582DCC734B5409513271DFAEDD81B669
        2BA23E5FA080BCB6B3B7146E8D4844A8DF0FD1E4DC2D49895645114E3437EFB9
        00FE48C8715DD7C02F25937E134715EF06E029FC87D76DFF3AFE030E949D7BF8
        81C7F90000000049454E44AE426082}
    end
    object btnConfirmar: TPngBitBtn
      Left = 610
      Top = 6
      Width = 114
      Height = 65
      Anchors = [akRight, akBottom]
      Caption = 'Confirmar'
      Default = True
      Enabled = False
      Layout = blGlyphTop
      TabOrder = 4
      OnClick = btnConfirmarClick
      PngImage.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000002A744558744372656174696F6E2054696D65004D692035204D727A20
        323030332031373A30313A3035202B303130308C96156A0000000774494D4507
        D30A0614152C29E70207000000097048597300000AF000000AF00142AC349800
        0008B04944415478DAAD57596C1BD7153DC34D14156AB1ACC8B46549D6D2C8B1
        2CD74B54B5B1121B46BA49686C7881D1BA1FFDE9961648177401DA02F9685204
        8D9B20A8E3084EA2C4AB1C5BADEB587610C9515A0791B5585BDCBADAA38514C5
        55E49033E40CC9DEF7C849254572DC85C0C5238733F79C77DEB9F7BD1170EF1F
        E13FB8977D12FF53D296167F8E2479AA294F6524A2962412F182783CB64A5162
        99AA1ACF4824144334AA4251D4B82449E168341A9224D12BCB1167341A9E0E06
        C5914824DC7DE1C253C3944EA188DF1381E969B9CEE3D1FF2410501EA6A42641
        109048242008BA049B14FB1E8FC7D928B031168BB148288A22A8AA8A70388C50
        2884F9F97978BDDE84D3E91EF1FBDD27DBDB1B1A4471D64310EA8A04EEDC517E
        118FEB9FF6FB63421238C6C158B0E4DA770D58FBBE80140FF61F7B5EA7D3F1E7
        9A9B9B3131F18F8B9D9D8D3F6373A4882E4BE0FAF5F0F0EEDDE9656E77020E87
        4AB388211A8D51D285C0EA02B0380F8D4C22915C7A064E8A70251C0E07A6A6A6
        3038D8E7E9E838FE63BAE11AC5DCB204DADB4313454596A2F474C06804CD80CD
        9C16501108808D710AD25065630CE40DC8B202498A90F4110214E1F30598F434
        FA100C06F9E8743AE9FE88A7B3F3E56304D34831B68202818992126B112D2925
        56296194922BF43D02519438482C16875EAFA331799D7C4244D818E1239BB92C
        CB1C5C14453E322582C179574FCF895709E604C5A856250B0908ADADFEE1F2F2
        AC528D80246904A21C9CCD94116012B3B54D02270968C17E535570602D92A6F4
        3A7B7B5F6BBC2B81B636DF50696976593CFEFF25C094F0FB5D8EFEFE93AF13CE
        2B2B1278EB2DFBD5D2D2DC2F99CD264A1427E6320147FF6B020C381008F0D29C
        9B9B1AB97DBBE93CE1BC9AF2C027095CBDEA1DDCB32767D3F8F83C2627456464
        6490B3F53CE942025A79B1B55E4840FBCD08B8DD6E783C1E984C26646767A3A7
        A72BDCD7F7DAF32905C69725D0D232D75F5191B7392B0B040EAA5D2FECF60025
        93C8CD122912260099DFCC4A4F9BB1D617586932625A3F604AD9ED767ADEC5AA
        213830D0789C1E6D58710988401F11A8620F330FB056ABA306C88295A12CC709
        34C17DC1DCCEC0D9AC350598D95830E9B532D496C2E7F37A890093FFE515095C
        BE6CEFDABCD9B69D351406A299908DA228D328F3D9EAF5FA4F788034414E8E19
        56AB89FE072F4BAF37402ADA313030422D7ECA353070B2F1AE0A5CB830D15451
        B1EE6046866111814F33617E3E75AEEC20AECC9E47B7EF7D7875B3A02E0E6B74
        151E4CDB8ACFA7EDC178AFC379ECD8CFEF5E86CDCDD3D71E7924EF8B5EAF9E66
        2A70E0643392572450569E85A6B9E3B8127803F515D57830BF04214582539A83
        4BF263C831833B930EECD4D7A9579E3CF71CC132138EAC4060EA464D4DC1172C
        1619C3C33EEAE121727026AF04069E5C82C4C7555058948EDF0E3C0943A1035F
        AFFA3281CE62687E10F6B013122913A2761D22AF4468BF98990EC07F536EC369
        FC8A56AB97F022CB1178AFAAAAA096F2F32A309BA960C7667925389D61DEE719
        B0AA2A282ACA41BBBE0973991DF8C6963AF47B3B301B992085740811B8C808D0
        7DA148942B11A55DD863A72AB9197B054DF81DE17D44A12C2270F1E258DB962D
        C5BBF57A81AF3D933F590980C1005E5A949737297DAE0BDFECDA8567BFF2037C
        E8EB82439AA0D9E820A9346B5A1A89C0451A27C5593C5379021B332BF09DBEC3
        E8FEDB7414A7633FC40C2EB15D71118173E786CE6DDA54748839391C5E6C4251
        643B5EB20A6CB60C34FBFE08296F10956B36E096EF3A8C02754FFA2F42928729
        24526A2268C7D1AA93D85B7888035C9C3B8A03279E023E089CC53B78812EF52F
        2270F6EC68D3CE9D050765D9C8D77AA5565C529285277AF7E1F0AE1D180E0E60
        7C9E4C2DE86035A643260522D49426453B7EBFE534BE56B89F279F89FC13F5ED
        35E8EBCD240B4E0EE2753CCBCE064B080CFFE5D1474BEA4DA608FAFABC484FB7
        90FC0672BBC20930051881071EC846FDFBDBF0C4AEC7D130D08043D93F45D810
        C63BA106D8D257632AE4C41F3E7B0AF5C5FBB9CB9C91517CB5B51AB7EC5E3A0F
        5500AE111F5E521981B38B089C3933F4A76DDB363CCEFA406E2E35EC71378686
        5C64C0E4194FA5D9592C16D4D414E3E0CD1A1CACADC5D8B884F3B517C824C073
        A3CFE0C589DFA061C79BA8DF7080277545C750D7FA10BA66BCC9C21BD901047B
        FD381E7B896D4C8B0E2467CEFCBD69DBB6F24366B381E457B8E3AD563D19D0C0
        DD4D0755AA0837B2B212F87EF73E546DCFC5B5D176BCFDF00728B616C36C32C3
        9C9E46472970422E650CF5297081C0E3F3B4C9CC96D17AF4DCC6395C661BD322
        020D0DDDBFACAC2C7F7AFDFA4C329DC2D75F3323F303EB03AC4DAF5D6BC59BCE
        E771CB70157309567A406B6D17D6598B90A07DC342673A776C9C64DF816E02D7
        2504C4C85318AFA40D250C748CFD1937D1C9E6BC88C08103DFB6EDDDFBA336AA
        848D9999E934638997223B7A2D34A1C9A4C77D05011CFEEB6EE496A651B90561
        CBB0E2EDDA6EDC6F5D0F578CD6BCADFA63F03863EDCEA3A22BA7CABFA5E2A4FC
        0644BC47902D4BDF0B8C7575471EDABFFF5B476DB6B2EAD5AB7304F62C23110A
        495C05ED3C90979786F3AE17706AEE4518730444952836E5AFC1A1E27D3835D2
        847EBBE7DF59BD64283B994FA063409FFD126EF0BD808C83DEE5DE8CA8071A2B
        8E1CF9DE81EDDBF73D969B9BBF95664C98ACFF27F778A39195690CEB0BCDF875
        CF77F16EB805426EF2B4CCDF7FB497B230F9C15D0888ABE93A35BE8FEC377005
        C3F4FFBBF46F2BC5EC7204D8356AC2B0516CB4D9365495946C292A28F84C7E76
        767E9EC99491ABD7A7659212698CC4E76ACA4C97FC8D864B334D66D5621260B0
        90CC26DACFADD432298D324FCCEC2AFAA52BE8808708F6A4C0C797B6E2A51F43
        520D6453DC4FB1868216123914961449DAF9B9E775C824E25B518075A880C5B8
        964F645E71609276BE0FE1055532939C82996F62B9CD68A50FBBC7940264614C
        91D32F785E485D5B455142B18EC29ABA1E608D906238054C0D618557B37B24F3
        6944EF4B29644C5D672FA3A154C858F2DAFE2FCB954C3B1373B52B0000000049
        454E44AE426082}
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 0
    Width = 737
    Height = 51
    DataSource = dsCid
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
    Align = alTop
    TabOrder = 2
  end
  object dsCid: TDataSource
    DataSet = dm.tbCidades
    Left = 656
    Top = 80
  end
end
