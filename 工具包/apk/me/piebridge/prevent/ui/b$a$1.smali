.class Lme/piebridge/prevent/ui/b$a$1;
.super Ljava/lang/Object;
.source "PreventFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/piebridge/prevent/ui/b$a;-><init>(Lme/piebridge/prevent/ui/b;Lme/piebridge/prevent/ui/PreventActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lme/piebridge/prevent/ui/b;

.field final synthetic b:Lme/piebridge/prevent/ui/b$a;


# direct methods
.method constructor <init>(Lme/piebridge/prevent/ui/b$a;Lme/piebridge/prevent/ui/b;)V
    .registers 3

    .prologue
    .line 506
    iput-object p1, p0, Lme/piebridge/prevent/ui/b$a$1;->b:Lme/piebridge/prevent/ui/b$a;

    iput-object p2, p0, Lme/piebridge/prevent/ui/b$a$1;->a:Lme/piebridge/prevent/ui/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5

    .prologue
    .line 509
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/piebridge/prevent/ui/b$f;

    .line 510
    iget-object v1, p0, Lme/piebridge/prevent/ui/b$a$1;->b:Lme/piebridge/prevent/ui/b$a;

    invoke-static {v1}, Lme/piebridge/prevent/ui/b$a;->a(Lme/piebridge/prevent/ui/b$a;)Lme/piebridge/prevent/ui/PreventActivity;

    move-result-object v1

    invoke-virtual {v1}, Lme/piebridge/prevent/ui/PreventActivity;->e()Ljava/util/Set;

    move-result-object v1

    .line 511
    if-eqz p2, :cond_21

    .line 512
    iget-object v0, v0, Lme/piebridge/prevent/ui/b$f;->a:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 516
    :goto_17
    iget-object v0, p0, Lme/piebridge/prevent/ui/b$a$1;->b:Lme/piebridge/prevent/ui/b$a;

    invoke-static {v0}, Lme/piebridge/prevent/ui/b$a;->a(Lme/piebridge/prevent/ui/b$a;)Lme/piebridge/prevent/ui/PreventActivity;

    move-result-object v0

    invoke-virtual {v0}, Lme/piebridge/prevent/ui/PreventActivity;->f()V

    .line 517
    return-void

    .line 514
    :cond_21
    iget-object v0, v0, Lme/piebridge/prevent/ui/b$f;->a:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_17
.end method
