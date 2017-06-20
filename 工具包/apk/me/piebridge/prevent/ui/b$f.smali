.class Lme/piebridge/prevent/ui/b$f;
.super Ljava/lang/Object;
.source "PreventFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/piebridge/prevent/ui/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Landroid/widget/CheckBox;

.field c:Landroid/widget/ImageView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/ImageView;

.field h:Landroid/graphics/drawable/Drawable;

.field i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field j:Lme/piebridge/prevent/ui/b$d;

.field k:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lme/piebridge/prevent/ui/b$1;)V
    .registers 2

    .prologue
    .line 462
    invoke-direct {p0}, Lme/piebridge/prevent/ui/b$f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lme/piebridge/prevent/ui/PreventActivity;)V
    .registers 5

    .prologue
    .line 476
    invoke-virtual {p1}, Lme/piebridge/prevent/ui/PreventActivity;->d()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lme/piebridge/prevent/ui/b$f;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 477
    if-nez v0, :cond_15

    .line 478
    iget-object v0, p0, Lme/piebridge/prevent/ui/b$f;->g:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 484
    :goto_14
    return-void

    .line 480
    :cond_15
    iget-object v1, p0, Lme/piebridge/prevent/ui/b$f;->g:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 481
    invoke-virtual {p1}, Lme/piebridge/prevent/ui/PreventActivity;->c()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lme/piebridge/prevent/ui/b$f;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    iput-object v1, p0, Lme/piebridge/prevent/ui/b$f;->i:Ljava/util/Set;

    .line 482
    iget-object v1, p0, Lme/piebridge/prevent/ui/b$f;->g:Landroid/widget/ImageView;

    iget-object v2, p0, Lme/piebridge/prevent/ui/b$f;->i:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v2, v0}, Lme/piebridge/prevent/ui/a/i;->a(Ljava/util/Set;Z)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_14
.end method
