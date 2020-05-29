Return-Path: <libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+libertas-dev@lfdr.de
Delivered-To: lists+libertas-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35E771E7398
	for <lists+libertas-dev@lfdr.de>; Fri, 29 May 2020 05:29:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6454yfiduc6xBJxQKg1au4W7ksl6Lc/82SjJ/DCWfjw=; b=Sw6UID/rWny2QK
	g+cWXfCxxVbXFl6gQGmvJy+/pcNH67glOQHZoB4Z6ZuanvDYL1hfn7I0hDpRhoatlH3X/Pj7XAmA/
	agZPy0vw0qze/F7cOgPXvF11ui1b/jj/1QEbgMtJfPBQyiPDpoEK/pzqDN21jZUntkJ/6h9cuqwOk
	zV2aFZ44vo5hX5qpBsqhC8k4/aOE0O1UdwgqpbLiwAocskNd7QAY4wkLh2kbnAHi+UIRljUzQkFDs
	i/ET9BfXMKResjwHtOO0O0mFyf0deiCLZqCdx+Tuhw1/MirOg9un3m0aSU8QVY+S/Hc7a/PB9NvNL
	cWF2XQhZUIY34n9ldTjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeVhk-0000yJ-Fw; Fri, 29 May 2020 03:29:08 +0000
Received: from mail-eopbgr40076.outbound.protection.outlook.com ([40.107.4.76]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeVhe-0000uk-QV; Fri, 29 May 2020 03:29:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BnKYHkSEKl21XaJDxpLthtoaK4WfQP4DQR3fFGf+1McnggrUYeNqyyi4JsOteqWM0xyN3keoXIA2bQ82wwdjbkN8GSZt1z1PHMRLvFT/q2sOI2KaV3F3ne0dm6XgoKSFuK7Za7xfXjIv0afOwFc/9G8TZ88tRZHsbB3CfpfCbFz7AqPJg8jB/UPql320strnJ+bbG9gRq4fy8kPfTsy54A+vgsL0wUN9j05ytqzaLq25QM5APQYFCF++2zVCfq7nR4PrqIILPc5Y/NDZSmSNBt1v3lpFBu7/JIEOrdYjWf6TVL7thjoz2II/qGzpFHSHqy8DszdJKYlm6k8hSLrlnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1+RJzjUhkAetnFTdjRVjHhJoF4iCdoCKShOM68Q09OY=;
 b=ZHJpWolTVaYcaH/+4wKWDbw28xyMG+EvNYrMjGbthpbMggS/o2nk59zw9aOxQQk1zpbeRgGglm9lJb3vUwLVMz2I8TpYcRiz58MPw3vBS2q1rgfBVnOwK5rJR1fEHwP9TF5L5G8flQJ+VebwSCkKgxGR2CL6kymOFHdcRxRxFgMRt+mp6Zf/MzhxVlM5R+HHB0OQ7Nk91ZqgxY8TSjc+iwXMmK+3KV6uNqG4Fk3xcB1oyxDgShLSiaXfjbkxnI0qyuC4a91HXNSdZHRx0jbHzXbI/FF5Xh+u+uLLmnKGtgjYPjyFLb+MkvTUGM445njF/0eI0SJUmZ6BhzaMR4uAfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1+RJzjUhkAetnFTdjRVjHhJoF4iCdoCKShOM68Q09OY=;
 b=nYjsj33H4CGjUywJyi7QoTZn+eQ6x3fG8NrVl7DjddCMRNJT7dQMZcY0qfbr5oC9ggFRCzjK6UopHFKxSeE51Xy9MtNDbHqueaQeNOj5ypbmmhQTueTOCuGgC2GWt/9JeK8Q3+kX30+MurvE0UzD84FPp3gEMHgtMGa/4oiV7ew=
Received: from VI1PR04MB4366.eurprd04.prod.outlook.com (2603:10a6:803:3d::27)
 by VI1PR04MB4013.eurprd04.prod.outlook.com (2603:10a6:803:3e::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.24; Fri, 29 May
 2020 03:28:59 +0000
Received: from VI1PR04MB4366.eurprd04.prod.outlook.com
 ([fe80::8102:b59d:36b:4d09]) by VI1PR04MB4366.eurprd04.prod.outlook.com
 ([fe80::8102:b59d:36b:4d09%7]) with mapi id 15.20.3045.018; Fri, 29 May 2020
 03:28:59 +0000
From: Ganapathi Bhat <ganapathi.bhat@nxp.com>
To: =?utf-8?B?UGFsaSBSb2jDoXI=?= <pali@kernel.org>, Ulf Hansson
 <ulf.hansson@linaro.org>, "linux-mmc@vger.kernel.org"
 <linux-mmc@vger.kernel.org>
Subject: RE: [EXT] [PATCH 01/11] mmc: sdio: Fix macro name for Marvell device
 with ID 0x9134
Thread-Topic: [EXT] [PATCH 01/11] mmc: sdio: Fix macro name for Marvell device
 with ID 0x9134
Thread-Index: AQHWMEes5xoAaVwKSEe7FG6OYre4V6i+cY2Q
Date: Fri, 29 May 2020 03:28:59 +0000
Message-ID: <VI1PR04MB43668C84D84103D8F8B3EA428F8F0@VI1PR04MB4366.eurprd04.prod.outlook.com>
References: <20200522144412.19712-1-pali@kernel.org>
 <20200522144412.19712-2-pali@kernel.org>
In-Reply-To: <20200522144412.19712-2-pali@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [103.54.18.180]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 10937a1e-ce0f-4459-eaae-08d803806cff
x-ms-traffictypediagnostic: VI1PR04MB4013:
x-microsoft-antispam-prvs: <VI1PR04MB40135E10FBF39F7D6C1695DF8F8F0@VI1PR04MB4013.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 04180B6720
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kjYx2LyFWJrqUKMf9ZigoKm3tQeCc1+LqxbRYBDQHKAaU0ftkpDAPAg5ylwwWg2KnSzf8nF6p6PCiv1HPZWtZ/+G8qzuJZkgGLWHJy1uydZWuOhSxg6fduNn/gPlol0jJl2FFrs4Gb9KFIsQqWrytzzRQwzNDqA2yDeg9Q6BVniU/pa3GI3XlG/T7HrM2MR2ZfiiXbeh9ZZXsGjnyyg7NQB3izE64jXmFyAp80EH/yjpz2kRfQNqfYOocqPzWb/CpVqbgEN01CE6IhkgYAzAJ+9IKKCg6BXOHlnP/Cwt88WQ/WbpcaA5IsX26hWBu2el
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR04MB4366.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(366004)(396003)(376002)(346002)(39860400002)(76116006)(64756008)(66946007)(66556008)(66446008)(55016002)(66476007)(478600001)(33656002)(9686003)(558084003)(4326008)(52536014)(44832011)(86362001)(5660300002)(110136005)(2906002)(71200400001)(316002)(7696005)(186003)(8936002)(6506007)(8676002)(54906003)(7416002)(26005);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: hEHlqqKi+t+uVbuAEA4/UEzfD9RQyaWkjYD54NLf3/wdPBDeetE+Q8LwoVTcqNUTs+Pnwlah44qNo3yyB9YVgZIADoklc6WzI/+ehWqlUlxmbe2tkB9I/UgZ7RyToXqY0KV9ynA/69aQxkuXJD65W5ArL9IxXQJfOtkDDfPw/vDUt7Guewn1ARahTfooGCVJbdq+4FkMGSZwC6nFGDPNwHvYPzxxyh8rqahyHhnrN73kCedXYnAuPsCzlyfyFZZYl4iBB8uZKEwo5+d3AblQpkdmgUt9dRnjRCjD+RkovRbAhb6q2wjtyrkMsAm4kvfnxKsBAUN3UzKEh2qasx2TjAazUz1w8lbKt33GPQbObDm8CZDu9cryi5kd4BR5Wou6AyOfuu3smQs8LcIuVxnOaYJQpgvZWPxh4nXddu/vajMWFhIj9z4w2XDV1zaLHdiUeBUzO5RMa12jmBj+H3/9bmIAgY/djItDvV8oSrEjdJszdYic3qS0MVYkSHs1D4xn
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 10937a1e-ce0f-4459-eaae-08d803806cff
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 May 2020 03:28:59.0724 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /K1heXKgcg84/KQfUpVhe2RzAgBJCWLxOT60NGTL8pHtekObnEJSR48MDctHQpjl7m3bgk7AONhZdft5olnX+A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_202902_859079_807BA8DB 
X-CRM114-Status: UNSURE (   5.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.4.76 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.4.76 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

HI Pali,

> Kernel quirks for SDIO devices are
> matched against device ID from SDIO Common CIS. Therefore device ID used
> in quirk is correct, just has misleading name.


OK, understood. Thanks for the change.
Acked-by: Ganapathi Bhat <ganapathi.bhat@nxp.com>
_______________________________________________
libertas-dev mailing list
libertas-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/libertas-dev
