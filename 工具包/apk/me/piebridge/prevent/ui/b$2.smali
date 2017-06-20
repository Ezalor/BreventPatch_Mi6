.class Lme/piebridge/prevent/ui/b$2;
.super Ljava/lang/Object;
.source "PreventFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/piebridge/prevent/ui/b;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lme/piebridge/prevent/ui/b;


# direct methods
.method constructor <init>(Lme/piebridge/prevent/ui/b;)V
    .registers 2

    .prologue
    .line 124
    iput-object p1, p0, Lme/piebridge/prevent/ui/b$2;->a:Lme/piebridge/prevent/ui/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    .prologue
    .line 140
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .prologue
    .line 128
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6

    .prologue
    .line 132
    iget-object v0, p0, Lme/piebridge/prevent/ui/b$2;->a:Lme/piebridge/prevent/ui/b;

    invoke-static {v0}, Lme/piebridge/prevent/ui/b;->b(Lme/piebridge/prevent/ui/b;)Lme/piebridge/prevent/ui/b$a;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 133
    iget-object v0, p0, Lme/piebridge/prevent/ui/b$2;->a:Lme/piebridge/prevent/ui/b;

    invoke-static {v0}, Lme/piebridge/prevent/ui/b;->b(Lme/piebridge/prevent/ui/b;)Lme/piebridge/prevent/ui/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lme/piebridge/prevent/ui/b$a;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 135
    :cond_15
    return-void
.end method
