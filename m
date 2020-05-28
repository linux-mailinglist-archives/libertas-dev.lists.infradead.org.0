Return-Path: <libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+libertas-dev@lfdr.de
Delivered-To: lists+libertas-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8FED1E60EC
	for <lists+libertas-dev@lfdr.de>; Thu, 28 May 2020 14:33:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dkR5tuXE3aQ4cWQMe+A3KKrgFmHBb1L0y0GV4eQAyfQ=; b=qOlNkl/Jvy/w8F
	qDTAZfhsPaiEdw0/xpUtmR9WnszJMzhcJghLS5phzK0fh+E5EJtIlVRlhWsXNVfLWRAl+rAttaY0E
	tpvIAUmX2ORfzbiTY1pDodggTLeoWJSQdb42Mittl0pAIWCkqY/q7guYQZtx1RdScA5/WqpHTZBk3
	XmLNv8qU4KnfnWMtZEpJtHSyOW9d8jaNlbfq/1p8G6ckaPyISeD9cH0FPQ7hO//VhGXuBwi5WBC5C
	Rffpe/qACNWAUwc1roRUrC+GmoQM9WxmOekr1REhffOemtMha2QIJAmKdD7JdX4+/303eZJ+I68dW
	oK2UjGonpO/5wb5WvoLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeHiR-0004XY-Px; Thu, 28 May 2020 12:32:55 +0000
Received: from mail-eopbgr80055.outbound.protection.outlook.com ([40.107.8.55]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeHiK-0004SX-V1; Thu, 28 May 2020 12:32:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oTRhF46UoipCDrhTI57mc2lOC0onjt5GQ5glpspyXg6rgw8A9z+ozFK/QJMDEuzvb9bfRulTlMnlcM5q+6jWIyHc+w+yu/wR/tm0Irwx42Cf8EsCjavAnZVoQWXB2QUuu3SPVclC3FAWnq6KFbLhS4yuW7EjvCcr6s5mq5OATVuPeUFzmviNGj8+7bkx5YALOmHDSgi04fPqbWBQ2PAX4Ibf7MFdvgu0EOvKefOZDm+2Ohpm8DzNXxNONV8kT+f0LOZB2MJmlq1E6273xnK7/OKZvRjSllNG0MjpYutjgPRS/Jyz0VYjjA+zUAelrCm4mUpv/OjFnfH/WhNhhBBBeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MA0Ixfgt2t6+2BNKy5rniQQv7W86MoGdcA3p9aDbrVU=;
 b=cFoBh10dAEfUOXHMUD9SvM8Xt3Co//pzVEHdlhUdFm4+mWDtr9jUynGyABeP4yA52IOC5HeyO08CcfsrCsf7d3dUgZKZiAQyfiWOYNYTAahbm2fi8G3YjW1vCY0cyjdI/fQIsn/YApAzAWoNjHQHvx73Oe6m4VXqtKA8LsKKUgmGE+pHSjoEkcAvMgbLBFah1ROcv1AsO5MbgpnapsAJgqxdzfxX01RVJ1QqLuICqbuNP/gFT/ElCvvVHywnOQPWxYQSUmJZfwWk2JUdWu6RbNExTwhAtM2NDlHvSg0uD9ZKudwfj/ydR0L2UEFfZiUQteJpLnVDgf4b/zzBL9cV/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MA0Ixfgt2t6+2BNKy5rniQQv7W86MoGdcA3p9aDbrVU=;
 b=RkHoTbjlsZeYOnQ+mx1DV0+cX6+hjfTOkuPdWcIP23EiFh9uxLaZ9sYSxX3YxCSqJAk4eACRdV3bTEXcNLPPKWMcshy57X4pWwbwCTNiPuiJ0w6StFzUOZFVy6EAZY/Yf7K38kFXyKCQH6GhX85j8cvOrL1NlOhEGYJh0AY37A4=
Received: from VI1PR04MB4366.eurprd04.prod.outlook.com (2603:10a6:803:3d::27)
 by VI1PR04MB4366.eurprd04.prod.outlook.com (2603:10a6:803:3d::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.17; Thu, 28 May
 2020 12:32:43 +0000
Received: from VI1PR04MB4366.eurprd04.prod.outlook.com
 ([fe80::8102:b59d:36b:4d09]) by VI1PR04MB4366.eurprd04.prod.outlook.com
 ([fe80::8102:b59d:36b:4d09%7]) with mapi id 15.20.3045.018; Thu, 28 May 2020
 12:32:43 +0000
From: Ganapathi Bhat <ganapathi.bhat@nxp.com>
To: =?utf-8?B?UGFsaSBSb2jDoXI=?= <pali@kernel.org>, Ulf Hansson
 <ulf.hansson@linaro.org>, "linux-mmc@vger.kernel.org"
 <linux-mmc@vger.kernel.org>
Subject: RE: [EXT] [PATCH 02/11] mmc: sdio: Change macro names for Marvell
 8688 modules
Thread-Topic: [EXT] [PATCH 02/11] mmc: sdio: Change macro names for Marvell
 8688 modules
Thread-Index: AQHWMEeuWeLcIUCYeUyYT+wggOmgN6i9d2kw
Date: Thu, 28 May 2020 12:32:43 +0000
Message-ID: <VI1PR04MB43668C45F20EECE78179ECB78F8E0@VI1PR04MB4366.eurprd04.prod.outlook.com>
References: <20200522144412.19712-1-pali@kernel.org>
 <20200522144412.19712-3-pali@kernel.org>
In-Reply-To: <20200522144412.19712-3-pali@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [103.54.18.180]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: ca7b1354-c335-40ec-cada-08d803033840
x-ms-traffictypediagnostic: VI1PR04MB4366:
x-microsoft-antispam-prvs: <VI1PR04MB436666734DD809481C1A69A08F8E0@VI1PR04MB4366.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 0417A3FFD2
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ESNnmwwBk9xw+EqpcDpDkIU1MClWcX9EIew2dSd5J4mQPHgs41NUZBPY468Ihk/tyBLDz0pSkXFvjO9N0tGa0Fx3O08I+8LaY/BycnLK8+717rN9E9rtoltgMzOncRt6dCAvnEp0VtvGZrvsc+b4HhhNrFbqRGDD14LAA0Xc6m4PDONdR04YOlSPTg4csJfSca6m2l3PNYWFw4z/cexXx8HTmgmEKMbN7UMSvQVcir3BmTta3R3RxhXX0Heemmlo3NgsIuVMBtwzZcTZYlZhkEikvmIvbS/G2YGb4yliP1wJL6/7NRoRsp3mhv2uadWw
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR04MB4366.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(366004)(346002)(396003)(39860400002)(376002)(316002)(33656002)(5660300002)(44832011)(558084003)(186003)(7696005)(9686003)(54906003)(76116006)(110136005)(71200400001)(66946007)(66476007)(66446008)(64756008)(2906002)(86362001)(52536014)(7416002)(66556008)(6506007)(26005)(8936002)(8676002)(478600001)(4326008)(55016002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: N+FxMGKvUKKHG8gJjgTFgOaRXptaDXLmPzTmm68kNQDYf75HCZTHZx5b3+9myP8CJj5+cdPWqvZU1HQRQm00nCn+CNeXCpE349KRZGJPO5/u5FGQaS3K7EeP/rCNih8nIai/LkkBlS08Jf5Uh/Ms91Jmvb9UubGcsXBd28QPexKeITZ2OJRbDNpwqUMHOkaS81Sme2hL5yuFhb7wtuJLfGAWfHMDSB3PhXhBQGx4SCJVRnuC2NxQx34n6iOp/mB5/H6jMniH5T+Ty2MDxFwLwpRPpy7v4FexYIbKPR4FxCis37aXBM9dL89Qv6JC9JPMu50ZfnjZThdka2J3EPUF9KiWKtHRCU1X2Co4CCycfMb/YLTQSyOTu8ZwFy2RYJJuykMReSnjR7V5WEf3aMpQ76YissVSGhkqHqPv1VsbULIih7kKe8eHHDXVWAjsGSsbkA8w0V18INjC1lLVuPH1pSByEAHjnxTV3oih+geTGA8=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ca7b1354-c335-40ec-cada-08d803033840
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2020 12:32:43.5251 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CbCG6NOquhkq8Bse3J2apcyRB/AzPvZDgSnFSUovTtFL1cJYZtBHwqzqJOIE0isEz+l23VR2U9C6kNmbWjUaUQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4366
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_053248_997376_29DC573B 
X-CRM114-Status: UNSURE (   5.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.8.55 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.55 listed in wl.mailspike.net]
X-BeenThere: libertas-dev@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <libertas-dev.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/libertas-dev>,
 <mailto:libertas-dev-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/libertas-dev/>
List-Post: <mailto:libertas-dev@lists.infradead.org>
List-Help: <mailto:libertas-dev-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/libertas-dev>,
 <mailto:libertas-dev-request@lists.infradead.org?subject=subscribe>
Cc: "brcm80211-dev-list.pdl@broadcom.com"
 <brcm80211-dev-list.pdl@broadcom.com>,
 "libertas-dev@lists.infradead.org" <libertas-dev@lists.infradead.org>,
 Xinming Hu <huxinming820@gmail.com>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Amitkumar Karwar <amitkarwar@gmail.com>,
 =?utf-8?B?TWFyZWsgQmVow7pu?= <marek.behun@nic.cz>,
 "ath10k@lists.infradead.org" <ath10k@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "brcm80211-dev-list@cypress.com" <brcm80211-dev-list@cypress.com>,
 Kalle Valo <kvalo@codeaurora.org>,
 "b43-dev@lists.infradead.org" <b43-dev@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "libertas-dev" <libertas-dev-bounces@lists.infradead.org>
Errors-To: libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org

Hi Pali,

> Add underscore as separator in Marvell 8688 macro names for better
> readability and consistency.
> 

Thanks for the change;

Acked-by: Ganapathi Bhat <ganapathi.bhat@nxp.com>
_______________________________________________
libertas-dev mailing list
libertas-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/libertas-dev
