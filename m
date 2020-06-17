Return-Path: <libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+libertas-dev@lfdr.de
Delivered-To: lists+libertas-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F31D1FCE32
	for <lists+libertas-dev@lfdr.de>; Wed, 17 Jun 2020 15:16:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	Subject:To:From:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vxutfCYi0Oxa9hYpPWBCGcKgSC2OKrJMacdrpZzOZ1U=; b=tXz0tNEbGhx4en
	5Ej8y3TmnSaHJeY3ccouaRkXCcT/w+gr4CcH8VVhbFOfIuM77qF6M7jSIbxWtuXtJPA9EDWtLHVAt
	lPisAaI/Szn7vivn5FfnI/bSz4CB7pShQmYbvfsEmx/tnTS7uzc9KtGju+LBv1MDhWMl3Q6V3/vs6
	LlBpSOvnOygKawsB/VRybdhjWPI/iXmEAXEyhFjpFkjtD6HSUApaG/OhsgM1KSQF3+DCrBrWpFSpZ
	oH6TSi/9YkkafQ7MS2eIW7dxMnIaXzxvpo4oHFuBM69L5PHBIH/K8qkqlWUxhOo7q5vnqfZtygMMs
	8tYAIRotCrOXtzR1Qm7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlXvQ-0006no-Ea; Wed, 17 Jun 2020 13:16:20 +0000
Received: from rdns1.delivers-solutions.com ([147.135.99.17])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlXvN-0006n0-0M
 for libertas-dev@lists.infradead.org; Wed, 17 Jun 2020 13:16:18 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=default;
 d=delivers-solutions.com; 
 h=Reply-To:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding;
 i=info@delivers-solutions.com; 
 bh=HfOzYHtXihvNe2PYgpNWZYop7xo=;
 b=sHzrUfOpm7ViKWejgKAhXZlYjHwvZ1KewVn50a0R7RUgaNJhZj1NxNRPPYr4FFexP5haVWrbmPiC
 +t3udTjKkxy4411SnoRvIZ34Ix09CWW9/W0l2UiTMgDVKpBkUlRA+sZMXz2CTpc0DjmAjtxbyH1T
 9yT3nkwT6GvZxLEUIW8=
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=default;
 d=delivers-solutions.com; 
 b=GfFrq7CIV+WvaDiezV2yRQ4Pph79cveGLZLFf4uCykdVkZgXQ34UnJl8+3DILR2if8VLgO3sIqq/
 s/6Xg+nGEHgc7TrO8GdRwgZGyebR8Qt6NwdZdjhk1is9itfNEmEabWUJBKuyZRlw2HsclZie74ks
 ByWMZOEbjEGPysuCFcY=;
From: info@delivers-solutions.com
To: libertas-dev@lists.infradead.org
Subject: Receipt For Goods Available
Date: 17 Jun 2020 15:16:14 +0200
Message-ID: <20200617151613.7688A31C3F00D71C@delivers-solutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_061617_052679_C5EDE5B3 
X-CRM114-Status: UNSURE (   1.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Reply-To: info@cocyflame.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "libertas-dev" <libertas-dev-bounces@lists.infradead.org>
Errors-To: libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org

Hi

Hope this mail finds you well.

Our company have not bought your products before but due to 
excess demand of it here, so we decided to go for it.

I still have other request to make but there all in my 
specification.

Please let me know if you still have stocks available.


Waiting for your reply

 



Warmest Regards,

Angela Wilpert

Sales Executives Dept

HDT Sales & Merkating
vasileos konstantinou 89 Paphos, Paphos, Cyprus
Phone: +357 26 040001


_______________________________________________
libertas-dev mailing list
libertas-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/libertas-dev
