.class public Lcom/google/ads/h;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcom/google/ads/a;


# static fields
.field private static final b:Lcom/google/ads/b/h;


# instance fields
.field protected a:Lcom/google/ads/b/w;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/ads/b/h;->a:Lcom/google/ads/e/q;

    invoke-interface {v0}, Lcom/google/ads/e/q;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/b/h;

    sput-object v0, Lcom/google/ads/h;->b:Lcom/google/ads/b/h;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/ads/g;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/ads/h;->a(Landroid/content/Context;Lcom/google/ads/g;Landroid/util/AttributeSet;)Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/ads/h;->b(Landroid/content/Context;Lcom/google/ads/g;Landroid/util/AttributeSet;)Z

    invoke-direct {p0, p1, p2, p3}, Lcom/google/ads/h;->a(Landroid/app/Activity;Lcom/google/ads/g;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/ads/b/m; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not initialize AdView"

    invoke-virtual {v0, v1}, Lcom/google/ads/b/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, p2, v2}, Lcom/google/ads/h;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/ads/g;Landroid/util/AttributeSet;)V

    const-string v1, "Could not initialize AdView"

    invoke-virtual {v0, v1}, Lcom/google/ads/b/m;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Landroid/app/Activity;Lcom/google/ads/g;Ljava/lang/String;)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, -0x2

    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    new-instance v0, Lcom/google/ads/b/w;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/ads/b/w;-><init>(Lcom/google/ads/a;Landroid/app/Activity;Lcom/google/ads/g;Ljava/lang/String;Landroid/view/ViewGroup;Z)V

    iput-object v0, p0, Lcom/google/ads/h;->a:Lcom/google/ads/b/w;

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/google/ads/h;->setGravity(I)V

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/h;->a:Lcom/google/ads/b/w;

    invoke-static {p1, v0}, Lcom/google/ads/b/ag;->a(Landroid/app/Activity;Lcom/google/ads/b/w;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-virtual {v0, v5, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/ads/h;->addView(Landroid/view/View;II)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, -0x2

    const/4 v1, -0x2

    invoke-virtual {p0, v5, v0, v1}, Lcom/google/ads/h;->addView(Landroid/view/View;II)V
    :try_end_0
    .catch Ljava/lang/VerifyError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Gestures disabled: Not supported on this version of Android."

    invoke-static {v1, v0}, Lcom/google/ads/e/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v5, v7, v7}, Lcom/google/ads/h;->addView(Landroid/view/View;II)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Lcom/google/ads/g;Landroid/util/AttributeSet;)V
    .locals 6

    invoke-static {p2}, Lcom/google/ads/e/i;->b(Ljava/lang/String;)V

    const/high16 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/ads/h;->a(Landroid/content/Context;Ljava/lang/String;ILcom/google/ads/g;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private varargs a([Lcom/google/ads/g;)V
    .locals 4

    array-length v0, p1

    new-array v1, v0, [Lcom/google/ads/g;

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    aget-object v2, p1, v0

    invoke-virtual {p0}, Lcom/google/ads/h;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/ads/g;->a(Lcom/google/ads/g;Landroid/content/Context;)Lcom/google/ads/g;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/h;->a:Lcom/google/ads/b/w;

    invoke-virtual {v0}, Lcom/google/ads/b/w;->h()Lcom/google/ads/bv;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/bv;->n:Lcom/google/ads/e/ag;

    invoke-virtual {v0, v1}, Lcom/google/ads/e/ag;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/google/ads/g;Landroid/util/AttributeSet;)Z
    .locals 1

    invoke-static {p1}, Lcom/google/ads/e/a;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "You must have AdActivity declared in AndroidManifest.xml with configChanges."

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/ads/h;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/ads/g;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(Landroid/content/Context;Lcom/google/ads/g;Landroid/util/AttributeSet;)Z
    .locals 1

    invoke-static {p1}, Lcom/google/ads/e/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "You must have INTERNET and ACCESS_NETWORK_STATE permissions in AndroidManifest.xml."

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/ads/h;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/ads/g;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method a(Landroid/content/Context;Ljava/lang/String;ILcom/google/ads/g;Landroid/util/AttributeSet;)V
    .locals 7

    const/16 v4, 0x11

    if-nez p4, :cond_0

    sget-object p4, Lcom/google/ads/g;->b:Lcom/google/ads/g;

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/google/ads/g;->a(Lcom/google/ads/g;Landroid/content/Context;)Lcom/google/ads/g;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/ads/h;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    if-nez p5, :cond_2

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    :goto_0
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    if-nez p5, :cond_3

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    :goto_1
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    if-nez p5, :cond_4

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    :goto_2
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v2, p3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {v3}, Lcom/google/ads/g;->a()I

    move-result v4

    invoke-static {p1, v4}, Lcom/google/ads/e/a;->a(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3}, Lcom/google/ads/g;->b()I

    move-result v3

    invoke-static {p1, v3}, Lcom/google/ads/e/a;->a(Landroid/content/Context;I)I

    move-result v3

    add-int/lit8 v5, v4, -0x2

    add-int/lit8 v6, v3, -0x2

    invoke-virtual {v1, v0, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v2, v4, v3}, Lcom/google/ads/h;->addView(Landroid/view/View;II)V

    :cond_1
    return-void

    :cond_2
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1, p5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0

    :cond_3
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1, p5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_1

    :cond_4
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1, p5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_2
.end method

.method public a(Lcom/google/ads/d;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/h;->a:Lcom/google/ads/b/w;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/ads/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/h;->a:Lcom/google/ads/b/w;

    invoke-virtual {v0}, Lcom/google/ads/b/w;->e()V

    :cond_0
    iget-object v0, p0, Lcom/google/ads/h;->a:Lcom/google/ads/b/w;

    invoke-virtual {v0, p1}, Lcom/google/ads/b/w;->a(Lcom/google/ads/d;)V

    :cond_1
    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/google/ads/h;->a:Lcom/google/ads/b/w;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/h;->a:Lcom/google/ads/b/w;

    invoke-virtual {v0}, Lcom/google/ads/b/w;->r()Z

    move-result v0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/ads/h;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/h;->a:Lcom/google/ads/b/w;

    invoke-virtual {v0}, Lcom/google/ads/b/w;->k()Lcom/google/ads/b/e;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/ads/b/e;->setVisibility(I)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    invoke-virtual {p0}, Lcom/google/ads/h;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/ads/h;->a:Lcom/google/ads/b/w;

    invoke-virtual {v0}, Lcom/google/ads/b/w;->h()Lcom/google/ads/bv;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/bv;->g:Lcom/google/ads/e/af;

    invoke-virtual {v0}, Lcom/google/ads/e/af;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/b/ac;

    invoke-virtual {v0}, Lcom/google/ads/b/ac;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/ads/h;->a:Lcom/google/ads/b/w;

    invoke-virtual {v0}, Lcom/google/ads/b/w;->h()Lcom/google/ads/bv;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/bv;->l:Lcom/google/ads/e/ag;

    invoke-virtual {v0}, Lcom/google/ads/e/ag;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/h;->a:Lcom/google/ads/b/w;

    invoke-virtual {v0}, Lcom/google/ads/b/w;->h()Lcom/google/ads/bv;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/bv;->e:Lcom/google/ads/e/af;

    invoke-virtual {v0}, Lcom/google/ads/e/af;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/ads/AdActivity;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/ads/AdActivity;->c()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v1, Lcom/google/ads/h;->b:Lcom/google/ads/b/h;

    iget-object v0, p0, Lcom/google/ads/h;->a:Lcom/google/ads/b/w;

    invoke-virtual {v0}, Lcom/google/ads/b/w;->h()Lcom/google/ads/bv;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/bv;->e:Lcom/google/ads/e/af;

    invoke-virtual {v0}, Lcom/google/ads/e/af;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    const-string v2, "onopeninapp"

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/ads/b/h;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/google/ads/h;->b:Lcom/google/ads/b/h;

    iget-object v0, p0, Lcom/google/ads/h;->a:Lcom/google/ads/b/w;

    invoke-virtual {v0}, Lcom/google/ads/b/w;->h()Lcom/google/ads/bv;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/bv;->e:Lcom/google/ads/e/af;

    invoke-virtual {v0}, Lcom/google/ads/e/af;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    const-string v2, "onleaveapp"

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/ads/b/h;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAdListener(Lcom/google/ads/c;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/h;->a:Lcom/google/ads/b/w;

    invoke-virtual {v0}, Lcom/google/ads/b/w;->h()Lcom/google/ads/bv;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/bv;->o:Lcom/google/ads/e/ag;

    invoke-virtual {v0, p1}, Lcom/google/ads/e/ag;->a(Ljava/lang/Object;)V

    return-void
.end method

.method protected setAppEventListener(Lcom/google/ads/i;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/h;->a:Lcom/google/ads/b/w;

    invoke-virtual {v0}, Lcom/google/ads/b/w;->h()Lcom/google/ads/bv;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/bv;->p:Lcom/google/ads/e/ag;

    invoke-virtual {v0, p1}, Lcom/google/ads/e/ag;->a(Ljava/lang/Object;)V

    return-void
.end method

.method protected varargs setSupportedAdSizes([Lcom/google/ads/g;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/h;->a:Lcom/google/ads/b/w;

    invoke-virtual {v0}, Lcom/google/ads/b/w;->h()Lcom/google/ads/bv;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/bv;->n:Lcom/google/ads/e/ag;

    invoke-virtual {v0}, Lcom/google/ads/e/ag;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Warning: Tried to set supported ad sizes on a single-size AdView. AdSizes ignored. To create a multi-sized AdView, use an AdView constructor that takes in an AdSize[] array."

    invoke-static {v0}, Lcom/google/ads/e/i;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/ads/h;->a([Lcom/google/ads/g;)V

    goto :goto_0
.end method

.method protected setSwipeableEventListener(Lcom/google/ads/k;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/h;->a:Lcom/google/ads/b/w;

    invoke-virtual {v0}, Lcom/google/ads/b/w;->h()Lcom/google/ads/bv;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/bv;->q:Lcom/google/ads/e/ag;

    invoke-virtual {v0, p1}, Lcom/google/ads/e/ag;->a(Ljava/lang/Object;)V

    return-void
.end method
