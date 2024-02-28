menu = [{'title' : 'Обратная связь', 'url_name' : 'buy_button'}]

class DataMixin:
    def get_user_context(self, **kwargs):
        context = kwargs
        # cats = Products.objects.all()
        context['menu'] = menu
        # context['cats'] = cats
        if 'cat_selected' not in context:
            context['cat_selected'] = 0
        return context